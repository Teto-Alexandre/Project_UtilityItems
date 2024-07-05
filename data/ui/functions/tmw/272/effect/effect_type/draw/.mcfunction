# カードを引く
execute if data storage ui:temp temp.effect{effect_mode:"steal"} run tag @s add tmw272_temp_steal

execute as @e[tag=tmw272_temp_card_effect_target] at @s run function ui:tmw/272/effect/effect_type/draw/2

tag @e[tag=tmw272_temp_steal] remove tmw272_temp_steal
