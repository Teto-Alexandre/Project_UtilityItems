#===========================================================================

#弾を出す
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","ui","ui_proj","ui_302_1","ui_302_unpower","ui_302_nohit"]}
summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
execute store result score $x1 ui_calc1 run data get entity @e[tag=ui_marker,limit=1] Pos.[0] 1000
execute store result score $y1 ui_calc1 run data get entity @e[tag=ui_marker,limit=1] Pos.[1] 1000
execute store result score $z1 ui_calc1 run data get entity @e[tag=ui_marker,limit=1] Pos.[2] 1000
execute store result score $mod ui_calc1 run data get entity @s SelectedItem.tag.tmw.gun.ua
function ui:tmw/302/rand
execute store result entity @e[tag=ui_marker,limit=1] Pos.[0] double 0.001 run scoreboard players get $x1 ui_calc1
execute store result entity @e[tag=ui_marker,limit=1] Pos.[1] double 0.001 run scoreboard players get $y1 ui_calc1
execute store result entity @e[tag=ui_marker,limit=1] Pos.[2] double 0.001 run scoreboard players get $z1 ui_calc1
execute as @e[tag=ui_302_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet positioned ~ ~1 ~ run teleport @s ^ ^ ^1 ~ ~
execute store result score @e[tag=ui_302_unpower] ui_bm run data get entity @s SelectedItem.tag.tmw.gun.mov
execute store result score @e[tag=ui_302_unpower] ui_br run data get entity @s SelectedItem.tag.tmw.gun.range
execute store result score @e[tag=ui_302_unpower] ui_dmg run data get entity @s SelectedItem.tag.tmw.gun.dmg
scoreboard players operation @e[tag=ui_302_unpower] ui_bc2 = @s ui_bc2
scoreboard players operation @e[tag=ui_302_unpower] ui_bt = @s ui_bt
scoreboard players operation @e[tag=ui_302_unpower] ui_id = @s ui_id
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

#===========================================================================