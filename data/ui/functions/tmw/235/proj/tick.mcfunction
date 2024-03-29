# 射程
    scoreboard players operation @s ui_temp = @s ui_bm

# 初回限定: 弾道予測線表示
    #execute at @s[tag=!ui_lined] run function ui:tmw/235/proj/linemanager

# tick毎弾移動ループ
    execute if score @s ui_team matches 1.. run scoreboard players operation $temp ui_temp = @s ui_team
    execute if score @s ui_team matches 1.. as @e if score @s ui_team = $temp ui_temp run tag @s add ui_temp_team
    function ui:tmw/235/proj/move
    tag @e[tag=ui_temp_team] remove ui_temp_team

# キル条件
    kill @s[scores={ui_br=..0}]
    schedule function ui:tmw/235/proj/marker 1t append