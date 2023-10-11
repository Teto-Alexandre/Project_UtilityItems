# ui_temp_playerとui_temp_playersを利用して、自分以外の参加者から最近式視覚入力を行うコモン
execute if predicate ui:percentage/1 run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":">1% ","color":"yellow"},{"selector":"@e[tag=ui_temp_players,tag=!ui_temp_player]"},{"text":"に VISUAL_INPUT の解決を行います"}]

# ターゲット出来るエンティティを周囲に表示
    execute at @s as @e[tag=ui_temp_players,tag=!ui_temp_player] if score @s ui_tmw272_invisible matches 0 run function ui:tmw/272/common/visual_input/target_marker
    execute at @s as @e[tag=ui_temp_players,tag=!ui_temp_player] if score @s ui_tmw272_invisible matches 1.. if score @s ui_tmw272_glowing matches 1.. run function ui:tmw/272/common/visual_input/target_marker
    execute at @s positioned ^ ^ ^0.4 run tag @e[tag=ui_temp_marker,sort=nearest,limit=1] add ui_temp_target2
    execute at @e[tag=ui_temp_target2] run particle dust 0 1 1 0.2 ~ ~1.6 ~ 0 0 0 0 1 normal @s

# 選択したポインターのIDを取得
    execute store result score $select_obj_id ui_temp run scoreboard players get @e[tag=ui_temp_target2,limit=1] ui_obj_id

# マーカーを削除して参照
    kill @e[tag=ui_temp_marker]
    execute as @e[tag=tmw272_active] if score @s ui_obj_id = $select_obj_id ui_temp run tag @s add tmw272_visual_input

# IDをクリア
    scoreboard players reset $select_obj_id ui_temp