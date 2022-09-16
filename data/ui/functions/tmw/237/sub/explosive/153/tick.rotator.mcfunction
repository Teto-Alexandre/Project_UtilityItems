# トルネードオービット部分
# ラインを配置して座標を塗り回転する（これを4回繰り返す）

# ループ管理
    summon marker ~ ~ ~ {Tags:["ui_temp_marker"]}
    scoreboard players operation $temp ui_temp = $age ui_temp
    execute if score $temp ui_temp matches 32.. as @e[tag=ui_temp_marker] positioned as @s run teleport @s ^ ^ ^9.6
    execute if score $temp ui_temp matches 32.. run scoreboard players remove $temp ui_temp 32
    execute if score $temp ui_temp matches 16.. as @e[tag=ui_temp_marker] positioned as @s run teleport @s ^ ^ ^4.8
    execute if score $temp ui_temp matches 16.. run scoreboard players remove $temp ui_temp 16
    execute if score $temp ui_temp matches 8.. as @e[tag=ui_temp_marker] positioned as @s run teleport @s ^ ^ ^2.4
    execute if score $temp ui_temp matches 8.. run scoreboard players remove $temp ui_temp 8
    execute if score $temp ui_temp matches 4.. as @e[tag=ui_temp_marker] positioned as @s run teleport @s ^ ^ ^1.2
    execute if score $temp ui_temp matches 4.. run scoreboard players remove $temp ui_temp 4
    execute if score $temp ui_temp matches 2.. as @e[tag=ui_temp_marker] positioned as @s run teleport @s ^ ^ ^0.6
    execute if score $temp ui_temp matches 2.. run scoreboard players remove $temp ui_temp 2
    execute if score $temp ui_temp matches 1.. as @e[tag=ui_temp_marker] positioned as @s run teleport @s ^ ^ ^0.3
    execute if score $temp ui_temp matches 1.. run scoreboard players remove $temp ui_temp 1
    execute as @e[tag=ui_temp_marker] at @s run function ui:tmw/237/sub/explosive/153/tick.line
    execute if score @s ui_team matches 1 as @e[tag=ui_temp_marker] at @s run fill ~ ~-1 ~ ~ ~10 ~ light_blue_wool replace #ui:wools
    execute if score @s ui_team matches 2 as @e[tag=ui_temp_marker] at @s run fill ~ ~-1 ~ ~ ~10 ~ pink_wool replace #ui:wools
    execute if score @s ui_team matches 3 as @e[tag=ui_temp_marker] at @s run fill ~ ~-1 ~ ~ ~10 ~ yellow_wool replace #ui:wools
    execute if score @s ui_team matches 4 as @e[tag=ui_temp_marker] at @s run fill ~ ~-1 ~ ~ ~10 ~ lime_wool replace #ui:wools
    kill @e[tag=ui_temp_marker]

scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. rotated ~90 ~ run function ui:tmw/237/sub/explosive/153/tick.rotator