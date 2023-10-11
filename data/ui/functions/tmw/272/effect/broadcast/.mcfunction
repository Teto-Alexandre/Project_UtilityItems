execute store result score $lore_count ui_temp run data get storage ui:temp card.lore
execute if score $broadcast_type ui_temp matches 3 store result score $lore_count ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list[0].tag.display.Lore

execute if score $broadcast_type ui_temp matches 1 run function ui:tmw/272/effect/broadcast/effect
execute if score $broadcast_type ui_temp matches 2 run function ui:tmw/272/effect/broadcast/after_effect
execute if score $broadcast_type ui_temp matches 3 run function ui:tmw/272/effect/broadcast/only_one

scoreboard players reset $lore_count ui_temp