#
tag @s add ui_temp_player
scoreboard players operation $tmw272_team ui_temp = @s ui_team
execute if score $tmw272_team ui_temp matches 0 run scoreboard players set $tmw272_team ui_temp -32767
function ui:tmw/272/match/tag_temp_team/

#
scoreboard players add @s ui_tmw272_match_time 1
execute if score @s ui_tmw272_match_time matches 20 at @s run function ui:tmw/272/common/draw/once
execute if score @s ui_tmw272_match_time matches 25 at @s run function ui:tmw/272/common/draw/once
execute if score @s ui_tmw272_match_time matches 30 at @s run function ui:tmw/272/common/draw/once

#
execute if score @s ui_tmw272_match_time matches 50 at @s run function ui:tmw/272/common/draw/only_one/check

# 視線入力、ステータス参照
execute if entity @s[type=player] run function ui:tmw/272/common/visual_input/
execute if entity @s[type=player] run function ui:tmw/272/common/stats_open/actionbar_self
execute if entity @s[type=!player] run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_team,sort=random,limit=1,scores={ui_tmw272_glowing=1..}] add tmw272_visual_input
execute if entity @s[type=!player] unless entity @e[tag=tmw272_visual_input] run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_team,sort=random,limit=1,scores={ui_tmw272_invisible=0}] add tmw272_visual_input

#
execute if score @s ui_tmw272_invisible matches 1.. at @s run particle dust 1 1 1 1 ~ ~1 ~ 0.4 0.5 0.4 0 1 force
execute if score @s ui_tmw272_flying matches 1.. at @s run particle sweep_attack ~ ~0.3 ~ 0.1 0.1 0.1 0 1 force
execute if score @s ui_tmw272_glowing matches 1.. at @s run effect give @s glowing 1 0 true
execute if score @s ui_tmw272_invulnerable matches 1.. at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 0.4 0.5 0.4 0 1 force
execute if score @s ui_tmw272_stun matches 1.. at @s run particle crit ~ ~1 ~ 0.4 0.5 0.4 0.5 1 force
execute if score @s ui_tmw272_karma matches 100.. run function ui:tmw/272/match/periodic/state/karma

#
function oh_my_dat:please
execute if score $turn_time ui_temp matches 2.. if score $turn_time_rev ui_temp matches 2.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0] at @s run function ui:tmw/272/effect/
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0] at @s run function ui:tmw/272/after_effect/
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active[0] at @s run function ui:tmw/272/after_effect/active

# HPが0になったプレイヤーをマッチから除外する
execute if score @s ui_tmw272_health <= @s ui_tmw272_lethal_range if score @s ui_tmw272_undying > @s ui_tmw272_undying_count run function ui:tmw/272/match/player/state/undying
execute if score @s ui_tmw272_health <= @s ui_tmw272_lethal_range run function ui:tmw/272/match/player/death
execute if entity @s[scores={ui_st2=5}] run tellraw @s [{"text":"戦線から撤退しますか？","color": "red"}]
execute if entity @s[x_rotation=89..90,scores={ui_st2=20..}] run function ui:tmw/272/match/player/death

#
tag @e[tag=ui_temp_player] remove ui_temp_player
tag @e[tag=tmw272_visual_input] remove tmw272_visual_input
