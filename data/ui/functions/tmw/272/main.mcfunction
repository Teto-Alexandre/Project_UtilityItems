# アイテムのID参照 ( -1:開始ツール, 1:アイテム )
execute store result score $type ui_temp run data get entity @s SelectedItem.tag.tmw.type

# 簡略化タグを設定
tag @s add ui_temp_player
scoreboard players reset $link_id ui_temp
execute if entity @s[tag=tmw272_active] run function ui:tmw/272/init/_main
    #HC:視線入力
    execute as @s[tag=tmw272_active] at @s run function ui:tmw/272/common/visual_input/

#
execute if score $type ui_temp matches -1 if entity @s[tag=tmw_use_n] run function ui:tmw/272/id/-1/
execute if score $type ui_temp matches 1 if entity @s[tag=tmw_use_n] if entity @s[tag=tmw272_active] run function ui:tmw/272/id/1/

#
execute if entity @s[tag=ui_temp_del] run item replace entity @s weapon.mainhand with air

# 情報クリア
scoreboard players reset $link_id ui_temp
scoreboard players reset $obj_id ui_temp
tag @s remove ui_temp_del
tag @s remove ui_temp_player
tag @e[tag=ui_temp_players] remove ui_temp_players
tag @e[tag=tmw272_active_match] remove tmw272_active_match
tag @e[tag=tmw272_visual_input] remove tmw272_visual_input