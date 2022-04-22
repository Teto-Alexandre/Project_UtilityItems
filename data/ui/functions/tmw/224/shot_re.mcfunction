#===========================================================================

#弾を出す
summon minecraft:item ~ ~1.6 ~ {Item:{id:"torch",Count:1},PickupDelay:32767,Tags:["tmw_proj","ui","ui_proj","ui_224_1","ui_224_unpower","ui_224_nohit"]}
summon minecraft:marker ^ ^ ^2 {Tags:["ui","ui_marker"]}
execute store result score $x1 ui_calc1 run data get entity @e[tag=ui_marker,limit=1] Pos.[0] 1000
execute store result score $y1 ui_calc1 run data get entity @e[tag=ui_marker,limit=1] Pos.[1] 1000
execute store result score $z1 ui_calc1 run data get entity @e[tag=ui_marker,limit=1] Pos.[2] 1000
scoreboard players set $mod ui_calc1 1000
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

#ショットガン用リピート
scoreboard players remove @s ui_gms 1
execute as @s[scores={ui_gms=1..}] at @s run function ui:tmw/224/shot_re

#===========================================================================