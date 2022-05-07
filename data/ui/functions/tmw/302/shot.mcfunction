#弾を出す
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","ui","ui_proj","ui_302_1","ui_302_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
execute store result score $c.proj.spread ui_temp run data get entity @s SelectedItem.tag.tmw.gun.ua 1
execute if entity @s[scores={ui_st=1..}] run scoreboard players operation $c.proj.spread ui_temp /= #2 ui_num
execute if score $c.proj.spread ui_temp matches 1.. run function ui:tmw/302/square_shuffle
execute as @e[tag=ui_302_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet run teleport @s ^ ^ ^1 ~ ~
execute store result score @e[tag=ui_302_unpower] ui_bm run data get entity @s SelectedItem.tag.tmw.gun.mov
execute store result score @e[tag=ui_302_unpower] ui_br run data get entity @s SelectedItem.tag.tmw.gun.range
execute store result score @e[tag=ui_302_unpower] ui_dmg run data get entity @s SelectedItem.tag.tmw.gun.dmg
scoreboard players operation @e[tag=ui_302_unpower] ui_bc2 = @s ui_bc2
scoreboard players operation @e[tag=ui_302_unpower] ui_bt = @s ui_bt
scoreboard players operation @e[tag=ui_302_unpower] ui_id = @s ui_id
scoreboard players operation @e[tag=ui_302_unpower] ui_team = @s ui_team
data modify entity @e[tag=ui_302_unpower,limit=1] ArmorItems.[0].tag.display.Name set from entity @s SelectedItem.tag.display.Name
tag @e[tag=ui_302_unpower] remove ui_302_unpower
kill @e[tag=ui_marker]

#アイテム転置
execute if score @s ui_bt matches 1.. in overworld run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
execute if score @s ui_bt matches 1.. in overworld store result score $ammo ui_calc1 run data get block 0 0 0 Items.[0].tag.tmw.slot.tag.tmw.energy.amount 1
execute if score @s ui_bt matches 1.. in overworld store result block 0 0 0 Items.[0].tag.tmw.slot.tag.tmw.energy.amount int 1 run scoreboard players operation $ammo ui_calc1 -= @s ui_bu
execute if score @s ui_bt matches 1.. in overworld run item replace entity @s weapon.mainhand from block 0 0 0 container.0

#発射音
execute if score @s ui_bt matches 1 run playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 1.5 2 0
execute if score @s ui_bt matches 1 run playsound minecraft:block.wooden_door.open player @a ~ ~ ~ 1 1.5 0
execute if score @s ui_bt matches -1 run playsound minecraft:item.trident.return player @a ~ ~ ~ 1 1.5 0
execute if score @s ui_bt matches 2 run playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1.5 1.5 0

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
execute as @s[scores={ui_gms=1..}] at @s run function ui:tmw/302/shot_re

#スコアリセット
scoreboard players reset $c.proj.spread ui_temp