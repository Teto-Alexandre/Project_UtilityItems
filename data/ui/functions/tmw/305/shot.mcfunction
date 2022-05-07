#銃の種類確認
execute store result score @s ui_gt run data get entity @s SelectedItem.tag.tmw.gun.gt
#弾を出す
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","ui","ui_proj","ui_305_1","ui_305_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
execute store result score $c.proj.spread ui_temp run data get entity @s SelectedItem.tag.tmw.gun.ua 1
execute if entity @s[scores={ui_st=1..}] run scoreboard players operation $c.proj.spread ui_temp /= #2 ui_num
execute if score $c.proj.spread ui_temp matches 1.. run function ui:tmw/305/square_shuffle
execute as @e[tag=ui_305_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet run teleport @s ^ ^ ^1 ~ ~
execute store result score @s ui_gpc run data get entity @s SelectedItem.tag.tmw.slots.[0].tag.tmw.ammo.gpc
execute store result score @e[tag=ui_305_unpower] ui_bm run data get entity @s SelectedItem.tag.tmw.gun.mov
execute store result score @e[tag=ui_305_unpower] ui_br run data get entity @s SelectedItem.tag.tmw.gun.range
execute store result score @e[tag=ui_305_unpower] ui_dmg run data get entity @s SelectedItem.tag.tmw.gun.dmg
scoreboard players operation @e[tag=ui_305_unpower] ui_bc2 = @s ui_bc2
scoreboard players operation @e[tag=ui_305_unpower] ui_bt = @s ui_bt
scoreboard players operation @e[tag=ui_305_unpower] ui_gt = @s ui_gt
scoreboard players operation @e[tag=ui_305_unpower] ui_gpc = @s ui_gpc
scoreboard players operation @e[tag=ui_305_unpower] ui_id = @s ui_id
scoreboard players operation @e[tag=ui_305_unpower] ui_team = @s ui_team
data modify entity @e[tag=ui_305_unpower,limit=1] ArmorItems.[0].tag.display.Name set from entity @s SelectedItem.tag.display.Name
tag @e[tag=ui_305_unpower] remove ui_305_unpower
kill @e[tag=ui_marker]

# アイテム転置
    execute if score @s ui_bt matches 1.. run summon armor_stand ~ ~ ~ {Tags:["ui_temp"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{id:"stone",Count:1b},{},{},{}]}
    execute if score @s ui_bt matches 1.. run data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0] set from entity @s SelectedItem
    execute if score @s ui_bt matches 1.. store result score $ammo ui_calc1 run data get entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.slots.[0].tag.tmw.ammo.amount 1
    execute if score @s ui_bt matches 1.. store result entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.slots.[0].tag.tmw.ammo.amount int 1 run scoreboard players operation $ammo ui_calc1 -= #1 ui_num
    execute if score @s ui_bt matches 1.. run item replace entity @s weapon.mainhand from entity @e[tag=ui_temp,limit=1] armor.feet
    execute if score @s ui_bt matches 1.. run kill @e[tag=ui_temp]

#発射音
    #HG
        execute if score @s ui_bt matches 1 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.8 0
        execute if score @s ui_bt matches 1 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 1 0
        execute if score @s ui_bt matches 1 run playsound entity.blaze.hurt player @a ~ ~ ~ 2 2 0
        execute if score @s ui_bt matches 6 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 1.4 0
        execute if score @s ui_bt matches 6 run playsound block.chain.break player @a ~ ~ ~ 1.5 2 0
    #Bullet
        execute if score @s ui_bt matches 2 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.6 0
        execute if score @s ui_bt matches 2 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.8 0
        execute if score @s ui_bt matches 2 run playsound entity.blaze.hurt player @a ~ ~ ~ 2 1.5 0
    #AR
        execute if score @s ui_bt matches 3 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.2 1 0
        execute if score @s ui_bt matches 3 run playsound entity.blaze.hurt player @a ~ ~ ~ 1 2 0
    #SG
        execute if score @s ui_bt matches 4 run playsound entity.generic.explode player @a ~ ~ ~ 3 2 0
        execute if score @s ui_bt matches 4 run playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 4 1.2 0
        execute if score @s ui_bt matches 4 run playsound item.shield.break player @a ~ ~ ~ 2 1.8 0
        execute if score @s ui_bt matches 4 run playsound entity.blaze.hurt player @a ~ ~ ~ 3 1.2 0
    #SR
        execute if score @s ui_bt matches 5 run playsound entity.generic.explode player @a ~ ~ ~ 4 2 0
        execute if score @s ui_bt matches 5 run playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 5 1.5 0
        execute if score @s ui_bt matches 5 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.5 0
        execute if score @s ui_bt matches 5 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.6 0
        execute if score @s ui_bt matches 5 run playsound item.shield.break player @a ~ ~ ~ 2 1.5 0
        execute if score @s ui_bt matches 5 run playsound entity.blaze.hurt player @a ~ ~ ~ 3 0.7 0
    
    #Volt
        execute if score @s ui_gt matches 1 run playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 0.8 1.8 0
        execute if score @s ui_gt matches 1 run playsound item.trident.thunder player @a ~ ~ ~ 0.5 1.2 0
    #Seven
        execute if score @s ui_gt matches 2 run playsound block.amethyst_block.break player @a ~ ~ ~ 5 0.8 0

#反動
execute if score $gun.react ui_world matches 1.. if score @s ui_bt matches 1 run teleport @s ~ ~ ~ ~ ~-3
execute if score $gun.react ui_world matches 1.. if score @s ui_bt matches 6 run teleport @s ~ ~ ~ ~ ~-2
execute if score $gun.react ui_world matches 1.. if score @s ui_bt matches 2 run teleport @s ~ ~ ~ ~ ~-4
execute if score $gun.react ui_world matches 1.. if score @s ui_bt matches 3 run teleport @s ~ ~ ~ ~ ~-1.5
execute if score $gun.react ui_world matches 1.. if score @s ui_bt matches 4 run teleport @s ~ ~ ~ ~ ~-5
execute if score $gun.react ui_world matches 1.. if score @s ui_bt matches 5 run teleport @s ~ ~ ~ ~ ~-7.5

#クールタイム
execute store result score @s ui_gct run data get entity @s SelectedItem.tag.tmw.gun.gct1
execute store result score @s[scores={ui_bc=1}] ui_gct run data get entity @s SelectedItem.tag.tmw.gun.gct2
scoreboard players remove @s ui_bc 1
scoreboard players add @s ui_bc2 1
scoreboard players set @s[scores={ui_bc2=2..}] ui_bc2 0

#成功
tag @s add ui_temp_success

#ショットガン用リピート
scoreboard players remove @s ui_gms 1
execute as @s[scores={ui_gms=1..}] at @s run function ui:tmw/305/shot_re

#スコアリセット
scoreboard players reset $c.proj.spread ui_temp