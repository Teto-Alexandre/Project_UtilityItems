# アイテムのID参照 ( -1:開始ツール, 1:アイテム )
execute store result score $type ui_temp run data get entity @s SelectedItem.tag.tmw.type

# 簡略化タグを設定
tag @s add ui_temp_player
tag @e[tag=tmw_drop_s] add tmw_drop_n

# リンク先が消失すれば、所持リンクとアクティブタグを削除する
scoreboard players operation $id ui_temp = @s ui_id
scoreboard players operation $link_id ui_temp = @s ui_tmw272_link_id
execute as @e[tag=tmw272] if score @s ui_obj_id = $link_id ui_temp run tag @s add tmw272_match
execute unless entity @e[tag=tmw272_match] if score @s ui_tmw272_link_id matches 1..2147483647 run function ui:tmw/272/init/_main.connection_lost

# リンク形成
execute if entity @s[tag=tmw272_active] run function ui:tmw/272/init/_main
# 視線入力
#execute as @s[tag=tmw272_active] at @s run function ui:tmw/272/common/visual_input/
    #HC:ステータス参照
    #execute as @s[tag=tmw272_active] at @s run function ui:tmw/272/common/stats_open/actionbar_self

#
execute if score $type ui_temp matches -1 run function ui:tmw/272/id/-1/
execute if score $type ui_temp matches -2 run function ui:tmw/272/id/-2/
#execute if score $type ui_temp matches 1 if entity @s[scores={ui_use1=1..}] if entity @s[tag=tmw272_active] run function ui:tmw/272/id/1/
execute if score $type ui_temp matches 1 if entity @s[tag=tmw_drop_n] if entity @s[tag=tmw272_active] run function ui:tmw/272/id/1/

#
tag @e[tag=ui_temp_targetable_dropper] remove ui_temp_targetable_dropper

#
#execute if entity @s[tag=ui_temp_del] run item replace entity @s weapon.mainhand with air

# 情報クリア
scoreboard players reset $link_id ui_temp
scoreboard players reset $obj_id ui_temp
tag @s remove ui_temp_del
tag @s remove ui_temp_player
tag @e[tag=tmw272_match] remove tmw272_match
tag @e[tag=ui_temp_players] remove ui_temp_players
tag @e[tag=tmw272_active_match] remove tmw272_active_match
tag @e[tag=tmw272_visual_input] remove tmw272_visual_input