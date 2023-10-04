execute store result score $lore_count ui_temp run data get storage ui:temp card.lore

execute if score $broadcast_type ui_temp matches 1 run function ui:tmw/272/effect/broadcast/effect
execute if score $broadcast_type ui_temp matches 2 run function ui:tmw/272/effect/broadcast/after_effect

scoreboard players reset $lore_count ui_temp