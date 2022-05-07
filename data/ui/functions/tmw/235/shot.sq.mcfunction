# 弾拡散用スクエアシャッフル
    execute if entity @s[scores={ui_snipe=1..}] run scoreboard players operation $temp ui_temp = @s ui_snipe
    execute if entity @s[scores={ui_snipe=1..}] run scoreboard players add $temp ui_temp 1
    execute if entity @s[scores={ui_snipe=1..}] run scoreboard players operation $mod ui_temp /= $temp ui_temp
    #execute if entity @s[scores={ui_st=1..}] run scoreboard players operation $mod ui_temp /= #2 ui_num
    function ui:tmw/235/rand
    execute store result entity @e[tag=ui_temp_target,limit=1] Pos.[0] double 0.001 run scoreboard players get $x1 ui_temp
    execute store result entity @e[tag=ui_temp_target,limit=1] Pos.[1] double 0.001 run scoreboard players get $y1 ui_temp
    execute store result entity @e[tag=ui_temp_target,limit=1] Pos.[2] double 0.001 run scoreboard players get $z1 ui_temp