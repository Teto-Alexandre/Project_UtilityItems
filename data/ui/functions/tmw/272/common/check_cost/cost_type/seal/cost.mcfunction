# ここで封印
execute unless data storage ui:temp card.no_drowsy if score @s ui_tmw272_chain matches 1.. run scoreboard players operation $cost ui_temp += @s ui_tmw272_drowsy
execute unless data storage ui:temp card.no_seal run scoreboard players operation $cost ui_temp += @s ui_tmw272_seal
execute unless data storage ui:temp card.no_cost_next run scoreboard players operation $cost ui_temp += @s ui_tmw272_cost_next