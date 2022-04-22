#===========================================================================

#弾を出す
summon minecraft:item ~ ~1.6 ~ {Item:{id:"torch",Count:1},PickupDelay:32767,Tags:["tmw_proj","ui","ui_proj","ui_224_1","ui_224_2","ui_224_unpower","ui_224_nohit"]}
summon minecraft:marker ^ ^ ^2.5 {Tags:["ui","ui_marker"]}
execute store result score $x1 ui_calc1 run data get entity @e[tag=ui_marker,limit=1] Pos.[0] 1000
execute store result score $y1 ui_calc1 run data get entity @e[tag=ui_marker,limit=1] Pos.[1] 1000
execute store result score $z1 ui_calc1 run data get entity @e[tag=ui_marker,limit=1] Pos.[2] 1000
scoreboard players set $mod ui_calc1 1200
function ui:tmw/224/rand
execute store result score $x2 ui_calc1 run data get entity @s Pos.[0] 1000
execute store result score $y2 ui_calc1 run data get entity @s Pos.[1] 1000
execute store result score $z2 ui_calc1 run data get entity @s Pos.[2] 1000
scoreboard players operation $x1 ui_calc1 -= $x2 ui_calc1
scoreboard players operation $y1 ui_calc1 -= $y2 ui_calc1
scoreboard players operation $z1 ui_calc1 -= $z2 ui_calc1
execute store result entity @e[tag=ui_224_unpower,limit=1] Motion.[0] double 0.001 run scoreboard players get $x1 ui_calc1
execute store result entity @e[tag=ui_224_unpower,limit=1] Motion.[1] double 0.001 run scoreboard players get $y1 ui_calc1
execute store result entity @e[tag=ui_224_unpower,limit=1] Motion.[2] double 0.001 run scoreboard players get $z1 ui_calc1
scoreboard players operation @e[tag=ui_224_unpower] ui_id = @s ui_id
scoreboard players set $mod ui_calc1 5
function ui:common/rand
scoreboard players operation @e[tag=ui_224_unpower] ui_gct = $rand ui_calc1
tag @e[tag=ui_224_unpower] remove ui_224_unpower
kill @e[tag=ui_marker]

#アイテム転置
data modify storage ui:temp tag set from entity @s SelectedItem.tag
data modify storage ui:temp tag.tmw.amount set value 0
data modify storage ui:temp tag.tmw.type set value 1
item modify entity @s weapon.mainhand ui:tempout

#発射音
playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.2 0.6 0
playsound block.redstone_torch.burnout player @a ~ ~ ~ 1 1.6 0
playsound entity.blaze.hurt player @a ~ ~ ~ 1.5 1.5 0

#反動
execute if score $gun.react ui_world matches 1.. run teleport @s ~ ~ ~ ~ ~-2

#成功
tag @s add ui_temp_success

#ショットガン用リピート
scoreboard players remove @s ui_gms 1
execute as @s[scores={ui_gms=1..}] at @s run function ui:tmw/224/shot2_re

#===========================================================================