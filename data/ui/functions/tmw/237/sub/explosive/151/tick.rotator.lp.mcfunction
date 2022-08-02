# トルネードオービット部分

# ループ管理
    teleport @s ^ ^ ^0.1
    scoreboard players remove $temp2 ui_temp 1
    execute if score $temp2 ui_temp matches 1.. at @s run function ui:tmw/237/sub/explosive/151/tick.rotator.lp