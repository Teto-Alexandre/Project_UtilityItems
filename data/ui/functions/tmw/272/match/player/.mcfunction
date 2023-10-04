#
tag @s add ui_temp_player

#
scoreboard players add @s ui_tmw272_match_time 1
execute if score @s ui_tmw272_match_time matches 20 at @s run function ui:tmw/272/common/draw/once
execute if score @s ui_tmw272_match_time matches 25 at @s run function ui:tmw/272/common/draw/once
execute if score @s ui_tmw272_match_time matches 30 at @s run function ui:tmw/272/common/draw/once

# 視線入力、ステータス参照
execute if entity @s[type=player] run function ui:tmw/272/common/visual_input/
execute if entity @s[type=player] run function ui:tmw/272/common/stats_open/actionbar_self

#
function oh_my_dat:please
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0] run function ui:tmw/272/effect/
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0] run function ui:tmw/272/after_effect/
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active[0] run function ui:tmw/272/after_effect/active

# HPが0になったプレイヤーをマッチから除外する
execute if score @s ui_tmw272_health matches ..0 run function ui:tmw/272/match/player/death

#
tag @e[tag=ui_temp_player] remove ui_temp_player
tag @e[tag=tmw272_visual_input] remove tmw272_visual_input