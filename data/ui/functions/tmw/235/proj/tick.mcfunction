# 射程
    scoreboard players operation @s ui_temp = @s ui_bm

# 初回限定: 弾道予測線表示
    #execute at @s[tag=!ui_lined] run function ui:tmw/235/proj/linemanager

# tick毎弾移動ループ
    scoreboard players operation $team ui_temp = @s ui_team
    function ui:common/tag_temp_team/
    function ui:tmw/235/proj/move

# キル条件
    kill @s[scores={ui_br=..0}]
    schedule function ui:tmw/235/proj/marker 1t append