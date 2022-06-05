# トルネードオービット部分

# ループ管理
    scoreboard players operation $temp2 ui_temp = $temp ui_temp

    execute if score $temp2 ui_temp matches 40.. at @s run teleport @s ^ ^ ^4
    execute if score $temp2 ui_temp matches 40.. run scoreboard players remove $temp2 ui_temp 40
    execute if score $temp2 ui_temp matches 20.. at @s run teleport @s ^ ^ ^2
    execute if score $temp2 ui_temp matches 20.. run scoreboard players remove $temp2 ui_temp 20
    execute if score $temp2 ui_temp matches 10.. at @s run teleport @s ^ ^ ^1
    execute if score $temp2 ui_temp matches 10.. run scoreboard players remove $temp2 ui_temp 10
    execute if score $temp2 ui_temp matches 5.. at @s run teleport @s ^ ^ ^0.5
    execute if score $temp2 ui_temp matches 5.. run scoreboard players remove $temp2 ui_temp 5

    execute at @s run function ui:tmw/237/sub/explosive/107/tick.rotator.lp