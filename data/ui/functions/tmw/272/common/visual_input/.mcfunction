# ui_temp_playerとui_temp_playersを利用して、自分以外の参加者から最近式視覚入力を行うコモン

# ターゲット出来るエンティティを周囲に表示
    execute at @s as @e[tag=ui_temp_players,tag=!ui_temp_player] run function ui:tmw/272/common/visual_input/target_marker
    execute at @s positioned ^ ^ ^0.8 run tag @e[tag=ui_temp_marker,distance=..0.6,sort=nearest,limit=1] add ui_temp_target2
    execute at @e[tag=ui_temp_target2] run particle dust 0 1 1 0.2 ~ ~ ~ 0 0 0 0 1 normal @s
    tag @e[tag=ui_temp_target2] add tmw272_visual_input
    kill @e[tag=ui_temp_marker]
