execute store result score $countdown ui_temp run data get storage ui:temp card.countdown

execute unless score $countdown ui_temp matches 0 run scoreboard players set $broadcast_type ui_temp 9
execute unless score $countdown ui_temp matches 0 run function ui:tmw/272/effect/broadcast/
execute unless score $countdown ui_temp matches 0 run scoreboard players set $check_after_effect ui_temp 0
execute unless score $countdown ui_temp matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].delay set from storage ui:temp card.delay_base

execute unless score $countdown ui_temp matches -1..0 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].countdown int 1 run scoreboard players remove $countdown ui_temp 1

scoreboard players reset $countdown ui_temp
