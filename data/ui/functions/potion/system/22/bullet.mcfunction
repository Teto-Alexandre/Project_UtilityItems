#ミサイル技術から転用

#座標指定
scoreboard players set $temp ui_calc1 80
function ui:potion/system/rand_n
scoreboard players operation $x2 ui_calc1 = $x1 ui_calc1
scoreboard players operation $x2 ui_calc1 += $rand ui_calc1
function ui:potion/system/rand_n
scoreboard players operation $y2 ui_calc1 = $y1 ui_calc1
scoreboard players operation $y2 ui_calc1 += $rand ui_calc1
function ui:potion/system/rand_n
scoreboard players operation $z2 ui_calc1 = $z1 ui_calc1
scoreboard players operation $z2 ui_calc1 += $rand ui_calc1
summon arrow ~ ~ ~ {Tags:["tag","ui_arrow_T","ui_arrow_22"],Motion:[0.0,0.0,0.0],Potion:""}
execute as @e[tag=tag] store result entity @s Motion[0] double .000001 run scoreboard players get $x2 ui_calc1
execute as @e[tag=tag] store result entity @s Motion[1] double .000001 run scoreboard players get $y2 ui_calc1
execute as @e[tag=tag] store result entity @s Motion[2] double .000001 run scoreboard players get $z2 ui_calc1

#タグ回収
tag @e[tag=tag] remove tag