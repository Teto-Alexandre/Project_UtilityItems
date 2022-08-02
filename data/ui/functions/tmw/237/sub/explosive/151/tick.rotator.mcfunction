# トルネードオービット部分

# ループ管理
    scoreboard players operation $temp2 ui_temp = $temp ui_temp

    execute if score $temp2 ui_temp matches 64.. at @s run teleport @s ^ ^ ^6.4
    execute if score $temp2 ui_temp matches 64.. run scoreboard players remove $temp2 ui_temp 64
    execute if score $temp2 ui_temp matches 32.. at @s run teleport @s ^ ^ ^3.2
    execute if score $temp2 ui_temp matches 32.. run scoreboard players remove $temp2 ui_temp 32
    execute if score $temp2 ui_temp matches 16.. at @s run teleport @s ^ ^ ^1.6
    execute if score $temp2 ui_temp matches 16.. run scoreboard players remove $temp2 ui_temp 16
    execute if score $temp2 ui_temp matches 8.. at @s run teleport @s ^ ^ ^0.8
    execute if score $temp2 ui_temp matches 8.. run scoreboard players remove $temp2 ui_temp 8

    execute at @s run function ui:tmw/237/sub/explosive/151/tick.rotator.lp