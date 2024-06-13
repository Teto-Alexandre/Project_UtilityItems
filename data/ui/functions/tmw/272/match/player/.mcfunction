#
tag @s add ui_temp_player
scoreboard players operation $tmw272_team ui_temp = @s ui_team
execute if score $tmw272_team ui_temp matches 0 run scoreboard players set $tmw272_team ui_temp -32767
function ui:tmw/272/match/tag_temp_team/
#execute if score $tmw272_team ui_temp matches 5 run tag @e[tag=ui_temp_team] remove ui_temp_team
#execute if score $tmw272_team ui_temp matches 5 run tag @a[tag=ui_temp_team] remove ui_temp_team
#execute if score $tmw272_team ui_temp matches 5 run scoreboard players set $tmw272_team_last_temped ui_temp -32768

#
function oh_my_dat:please

# 最大体力計測などなど
scoreboard players operation @s ui_tmw272_mana < @s ui_tmw272_mana_limit
scoreboard players operation @s ui_tmw272_mana_max < @s ui_tmw272_mana_limit
scoreboard players operation @s ui_tmw272_health < @s ui_tmw272_health_limit
scoreboard players operation @s ui_tmw272_health_max > @s ui_tmw272_health

scoreboard players operation @s ui_tmw272_hp_crease_temp -= @s ui_tmw272_health
execute if score @s ui_tmw272_hp_crease_temp < #0 ui_num run scoreboard players operation @s ui_tmw272_hp_increase -= @s ui_tmw272_hp_crease_temp
execute if score @s ui_tmw272_hp_crease_temp > #0 ui_num run scoreboard players operation @s ui_tmw272_hp_decrease += @s ui_tmw272_hp_crease_temp
scoreboard players operation @s ui_tmw272_hp_crease_temp = @s ui_tmw272_health

scoreboard players operation $mana_increase_temp ui_temp = @s ui_tmw272_mana
scoreboard players operation $mana_max_increase_temp ui_temp = @s ui_tmw272_mana_max

execute store result score @s ui_tmw272_reactive_effect_num run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects
execute store result score @s ui_tmw272_intercept_command_num run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands

#
scoreboard players add @s ui_tmw272_match_time 1
execute if score @s ui_tmw272_match_time matches 20 at @s run function ui:tmw/272/common/draw/once
execute if score @s ui_tmw272_match_time matches 25 at @s run function ui:tmw/272/common/draw/once
execute if score @s ui_tmw272_match_time matches 30 at @s run function ui:tmw/272/common/draw/once

#
execute unless entity @s[tag=summoned_delete] if score @s ui_tmw272_match_time matches 50 at @s run function ui:tmw/272/common/draw/only_one/check
execute if entity @s[tag=summoned_delete] if score @s ui_tmw272_match_time matches 1 at @s run function ui:tmw/272/common/draw/only_one/check
execute if score @s ui_tmw272_match_time matches 1 at @s run function ui:tmw/272/common/draw/deck_effect/check

# 視線入力、ステータス参照
    #プレイヤー
execute if entity @s[type=player] run function ui:tmw/272/common/visual_input/
execute if entity @s[type=player] run function ui:tmw/272/common/stats_open/actionbar_self
    #非プレイヤー
execute if entity @s[type=!player] run function ui:tmw/272/common/visual_input/entity

#
execute if score @s ui_tmw272_invisible matches 1.. at @s run particle dust 1 1 1 1 ~ ~1 ~ 0.4 0.5 0.4 0 1 force
execute if score @s ui_tmw272_flying matches 1.. at @s run particle sweep_attack ~ ~0.3 ~ 0.1 0.1 0.1 0 1 force
execute if score @s ui_tmw272_glowing matches 1.. at @s run effect give @s glowing 1 0 true
execute if score @s ui_tmw272_invulnerable matches 1.. at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 0.4 0.5 0.4 0 1 force
execute if score @s ui_tmw272_stun matches 1.. at @s run particle crit ~ ~1 ~ 0.4 0.5 0.4 0.5 1 force
execute if score @s ui_tmw272_seal matches 1.. at @s if predicate ui:percentage/10 run particle block_marker barrier ~ ~1 ~ 0.4 0.5 0.4 0.5 1 force
execute if score @s ui_tmw272_cost_next matches 1.. at @s if predicate ui:percentage/10 run particle block_marker barrier ~ ~1 ~ 0.4 0.5 0.4 0.5 1 force
execute if score @s ui_tmw272_bleed matches 1.. at @s run particle block red_wool ~ ~1 ~ 0.4 0.5 0.4 0.5 1 force
execute if score @s ui_tmw272_burn matches 1.. at @s run particle flame ~ ~1 ~ 0.4 0.5 0.4 0.05 1 force
execute if score @s ui_tmw272_karma matches 100.. run function ui:tmw/272/match/periodic/state/karma

#
execute if score $turn_time_rev ui_temp matches ..-1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0] at @s run function ui:tmw/272/effect/normal_linear
execute if score $turn_time ui_temp matches 2.. if score $turn_time_rev ui_temp matches 2.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0] at @s run function ui:tmw/272/effect/normal_linear
execute if score $turn_time ui_temp matches ..-1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0] at @s run function ui:tmw/272/effect/normal_linear
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0] at @s run function ui:tmw/272/after_effect/
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active[0] at @s run function ui:tmw/272/after_effect/active
execute if score @s ui_tmw272_health <= @s ui_tmw272_lethal_range if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.DeathEffects[0] at @s run function ui:tmw/272/death_effect/active

# マナチェッカー最大値
scoreboard players operation $mana_increase_temp ui_temp -= @s ui_tmw272_mana
scoreboard players operation $mana_max_increase_temp ui_temp -= @s ui_tmw272_mana_max
execute if score $mana_increase_temp ui_temp matches ..-1 run scoreboard players operation @s ui_tmw272_mana_increase_by_self = @s ui_tmw272_mana
execute if score $mana_max_increase_temp ui_temp matches ..-1 run scoreboard players operation @s ui_tmw272_mana_max_increase_by_self = @s ui_tmw272_mana_max

# HPが0になったプレイヤーをマッチから除外する
execute if score @s ui_tmw272_health <= @s ui_tmw272_lethal_range if score @s ui_tmw272_determination matches 1.. run function ui:tmw/272/match/player/state/determination
execute if score @s ui_tmw272_health <= @s ui_tmw272_lethal_range if score @s ui_tmw272_undying > @s ui_tmw272_undying_count run function ui:tmw/272/match/player/state/undying

# チーム
team join blue @s[tag=tmw272_active,scores={ui_team=1}]
team join red @s[tag=tmw272_active,scores={ui_team=2}]
team join yellow @s[tag=tmw272_active,scores={ui_team=3}]
team join green @s[tag=tmw272_active,scores={ui_team=4}]
team join gray @s[tag=tmw272_active,tag=tmw272_spectate]
team leave @s[tag=tmw272_active,scores={ui_team=5..6}]

execute if entity @s[tag=tmw272_active] if score @s ui_tmw272_health <= @s ui_tmw272_lethal_range run function ui:tmw/272/match/player/death
execute if entity @s[tag=tmw272_active] if entity @s[scores={ui_st2=5}] run tellraw @s [{"text":"戦線から撤退しますか？","color": "red"}]
execute if entity @s[tag=tmw272_active] if entity @s[x_rotation=89..90,scores={ui_st2=20..}] run function ui:tmw/272/match/player/death

#
tag @e[tag=ui_temp_player] remove ui_temp_player
tag @e[tag=tmw272_visual_input] remove tmw272_visual_input
