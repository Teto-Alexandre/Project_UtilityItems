# Library
    #scoreboard objectives add ui_bm dummy
    #scoreboard objectives add ui_br dummy
    #scoreboard objectives add ui_dmg dummy

# 必要データ収集
    data modify storage ui:gun temp2 set from entity @s SelectedItem.tag.tmw.main
    execute store result score $range ui_temp run data get storage ui:gun temp2.Range
    execute store result score $damage ui_temp run data get storage ui:gun temp2.Damage
    execute store result score $multishot ui_temp run data get storage ui:gun temp2.MultiShot
    execute store result score $speed ui_temp run data get storage ui:gun temp2.Speed
    execute store result score $speed.plus ui_temp run data get storage ui:gun temp2.SpeedPlus
    scoreboard players set $speed.add ui_temp 0

# チャージ補正
    execute if score $burst4.id ui_temp matches 1.. run function ui:tmw/237/shot.burst4

# ランダム
    scoreboard players operation $mod ui_calc1 = $speed.plus ui_temp
    execute if score $mod ui_calc1 matches 1.. run function ui:common/rand
    execute if score $mod ui_calc1 matches 1.. run scoreboard players operation $speed.add ui_temp = $rand ui_calc1

# 弾を出す
    #execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
    execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","ui_proj_common","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
    execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
    execute store result score $mod ui_temp run data get storage ui:gun temp2.Spread 1
    execute if score $mod ui_temp matches 1.. run function ui:tmw/237/square_shuffle
    execute as @e[tag=ui_temp_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet run teleport @s ^ ^ ^1 ~ ~
    execute store result score @e[tag=ui_temp_unpower] ui_bpart run data get storage ui:gun temp2.FlyParticle
    execute store result score @e[tag=ui_temp_unpower] ui_hpart run data get storage ui:gun temp2.EndParticle
    scoreboard players operation @e[tag=ui_temp_unpower] ui_bm = $speed ui_temp
    scoreboard players operation @e[tag=ui_temp_unpower] ui_bm += $speed.add ui_temp
    scoreboard players operation @e[tag=ui_temp_unpower] ui_br = $range ui_temp
    scoreboard players operation @e[tag=ui_temp_unpower] ui_dmg = $damage ui_temp
    execute if score $color ui_temp matches 2 run scoreboard players add @e[tag=ui_temp_unpower] ui_bpart 10
    execute if score $color ui_temp matches 2 run scoreboard players add @e[tag=ui_temp_unpower] ui_hpart 10
    scoreboard players set @e[tag=ui_temp_unpower] ui_autohit 1
    scoreboard players set @e[tag=ui_temp_unpower] ui_bdt 1
    scoreboard players operation @e[tag=ui_temp_unpower] ui_id = @s ui_id
    scoreboard players operation @e[tag=ui_temp_unpower] ui_team = @s ui_team
    data modify entity @e[tag=ui_temp_unpower,limit=1] ArmorItems.[0].tag.display.Name set from entity @s SelectedItem.tag.display.Name
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
    kill @e[tag=ui_marker]

# インク減少
    scoreboard players operation $ink ui_temp -= $ink.main ui_temp

# アイテム転置
    #item modify entity @s weapon.mainhand ui:gun/name_ammo
    execute store result storage ui:beacongametemp value int 1 run scoreboard players get $ink ui_temp
    scoreboard players operation $ink.temp ui_temp = $ink ui_temp
    scoreboard players operation $ink.temp ui_temp *= #100 ui_num
    scoreboard players operation $ink.temp ui_temp /= $ink.max ui_temp
    scoreboard players operation $ink.temp ui_temp > #5 ui_num
    scoreboard players operation $ink.temp ui_temp < #95 ui_num
    #tellraw @a [{"score":{"name":"$ink.temp","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$ink.max","objective":"ui_temp"}}]

# 発射音
    execute store result score $temp ui_temp run data get storage ui:gun temp2.Sound
    execute if score $temp ui_temp matches 1 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 1.4 0
    #execute if score $temp ui_temp matches 1 run playsound entity.shulker.shoot player @a ~ ~ ~ 1.5 0.8 0
    #execute if score $temp ui_temp matches 1 run playsound entity.iron_golem.hurt player @a ~ ~ ~ 0.8 2 0
    execute if score $temp ui_temp matches 2 run playsound entity.guardian.attack player @a ~ ~ ~ 1 1.4 0

# クールタイム解除時刻.mod
    execute unless score $burst ui_temp matches 1 store result score $temp ui_temp run data get storage ui:gun temp.ShotCT
    execute if score $burst ui_temp matches 1 store result score $temp ui_temp run data get storage ui:gun temp.BurstCT
    execute store result score $cooltime ui_temp run time query gametime
    scoreboard players operation $cooltime ui_temp += $temp ui_temp
    scoreboard players remove $burst ui_temp 1

# 成功
    tag @s add ui_temp_success

# ショットガン.lp
    scoreboard players remove $multishot ui_temp 1
    execute if score $multishot ui_temp matches 1.. run function ui:tmw/237/shot.lp

# 変更した
    scoreboard players set $changed ui_temp 1