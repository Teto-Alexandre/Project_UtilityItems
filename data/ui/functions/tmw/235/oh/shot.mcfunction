# Library
    #scoreboard objectives add ui_bm dummy
    #scoreboard objectives add ui_br dummy
    #scoreboard objectives add ui_kb dummy
    #scoreboard objectives add ui_dmg dummy

# 弾を出す
    execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_235","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
    execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
    execute store result score $mod ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.ua 1
    execute if score $mod ui_temp matches 1.. run function ui:tmw/235/square_shuffle
    execute as @e[tag=ui_temp_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet run teleport @s ^ ^ ^1 ~ ~
    execute store result score @e[tag=ui_temp_unpower] ui_bm run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.mov
    execute store result score @e[tag=ui_temp_unpower] ui_br run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.range
    execute store result score @e[tag=ui_temp_unpower] ui_dmg run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.dmg
    execute store result score @e[tag=ui_temp_unpower] ui_kb run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.kb
    scoreboard players operation @e[tag=ui_temp_unpower] ui_id = @s ui_id
    scoreboard players operation @e[tag=ui_temp_unpower] ui_team = @s ui_team
    data modify entity @e[tag=ui_temp_unpower,limit=1] ArmorItems.[0].tag.display.Name set from entity @s Inventory.[{Slot:-106b}].tag.display.Name
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
    kill @e[tag=ui_marker]

# アイテム転置
    data modify storage ui:gun name set from entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.name
    item modify entity @s weapon.offhand ui:gun/name_ammo
    execute store result storage ui:beacongametemp value int 1 run scoreboard players get $ammo ui_temp
    scoreboard players operation $ammo ui_temp *= #100 ui_num
    scoreboard players operation $ammo ui_temp /= $ammo.max ui_temp
    scoreboard players operation $ammo ui_temp > #5 ui_num
    scoreboard players operation $ammo ui_temp < #95 ui_num
    #tellraw @a [{"score":{"name":"$ammo","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$ammo.max","objective":"ui_temp"}}]
    item modify entity @s weapon.offhand ui:gun/value/now.ammo

# 発射音
    execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.snd
    execute if score $temp ui_temp matches 0 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 1.2 0
    execute if score $temp ui_temp matches 0 run playsound entity.shulker.shoot player @a ~ ~ ~ 1.5 0.8 0
    execute if score $temp ui_temp matches 0 run playsound entity.iron_golem.hurt player @a ~ ~ ~ 0.8 2 0
    execute if score $temp ui_temp matches 1 run playsound entity.guardian.attack player @a ~ ~ ~ 1 1.4 0

# 反動
    execute if score $recoil ui_temp matches 3 unless score @s ui_snipe matches 1.. run teleport @s ~ ~ ~ ~ ~-3
    execute if score $recoil ui_temp matches 3 if score @s ui_snipe matches 1.. run teleport @s ~ ~ ~ ~ ~-1
    execute if score $recoil ui_temp matches 5 unless score @s ui_snipe matches 1.. run teleport @s ~ ~ ~ ~ ~-5
    execute if score $recoil ui_temp matches 5 if score @s ui_snipe matches 1.. run teleport @s ~ ~ ~ ~ ~-2
    execute if score $recoil ui_temp matches 9 unless score @s ui_snipe matches 1.. run teleport @s ~ ~ ~ ~ ~-9
    execute if score $recoil ui_temp matches 9 if score @s ui_snipe matches 1.. run teleport @s ~ ~ ~ ~ ~-5

# クールタイム解除時刻.mod
    execute unless score $burst ui_temp matches 1 store result score $temp ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.ct1
    execute if score $burst ui_temp matches 1 store result score $temp ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.ct2
    execute store result score $ct.temp ui_temp run time query gametime
    scoreboard players operation $ct.temp ui_temp += $temp ui_temp
    execute store result storage ui:beacongametemp value int 1 run scoreboard players get $ct.temp ui_temp
    item modify entity @s weapon.offhand ui:gun/value/now.ct
    scoreboard players remove $burst ui_temp 1

# 成功
    tag @s add ui_temp_success

# ショットガン.lp
    scoreboard players remove $multishot ui_temp 1
    execute if score $multishot ui_temp matches 1.. run function ui:tmw/235/oh/shot.lp