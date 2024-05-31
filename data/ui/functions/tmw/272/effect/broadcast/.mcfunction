execute if score $broadcast_type ui_temp matches 1 run data modify storage ui:temp temp.display set from storage ui:temp card
execute if score $broadcast_type ui_temp matches 2 run data modify storage ui:temp temp.display set from storage ui:temp card
execute if score $broadcast_type ui_temp matches 3 run data modify storage ui:temp temp.display set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[0].tag.display
execute if score $broadcast_type ui_temp matches 4 run data modify storage ui:temp temp.display set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward[0].tag.display
execute if score $broadcast_type ui_temp matches 5 run data modify storage ui:temp temp.display set from storage ui:temp card

#
execute unless data storage ui:temp temp.display.name if data storage ui:temp temp.display.Name run data modify storage ui:temp temp.display.name set from storage ui:temp temp.display.Name
execute unless data storage ui:temp temp.display.lore if data storage ui:temp temp.display.Lore run data modify storage ui:temp temp.display.lore set from storage ui:temp temp.display.Lore

execute store result score $lore_count ui_temp run data get storage ui:temp temp.display.lore

scoreboard players set $broadcast_name ui_temp 1
execute unless data storage ui:temp temp.display.name run scoreboard players set $broadcast_name ui_temp 0
execute if data storage ui:temp temp.display{name:''} run scoreboard players set $broadcast_name ui_temp 0
execute if data storage ui:temp temp.display{name:""} run scoreboard players set $broadcast_name ui_temp 0

#tellraw @a [{"text":"type:"},{"score":{"name": "$broadcast_type","objective": "ui_temp"}},{"text":" name:"},{"score":{"name": "$broadcast_name","objective": "ui_temp"}}]

#execute if score $broadcast_type ui_temp matches -1 if score $broadcast_name ui_temp matches 1 run function ui:tmw/272/effect/broadcast/debug
execute if score $broadcast_type ui_temp matches 1 if score $broadcast_name ui_temp matches 1 run function ui:tmw/272/effect/broadcast/effect
execute if score $broadcast_type ui_temp matches 2 if score $broadcast_name ui_temp matches 1 run function ui:tmw/272/effect/broadcast/after_effect
execute if score $broadcast_type ui_temp matches 3 if score $broadcast_name ui_temp matches 1 run function ui:tmw/272/effect/broadcast/only_one
execute if score $broadcast_type ui_temp matches 4 run function ui:tmw/272/effect/broadcast/reward
execute if score $broadcast_type ui_temp matches 5 if score $broadcast_name ui_temp matches 1 run function ui:tmw/272/effect/broadcast/after_effect
execute if score $broadcast_type ui_temp matches 6 run function ui:tmw/272/effect/broadcast/discard
execute if score $broadcast_type ui_temp matches 7 if score $broadcast_name ui_temp matches 1 run function ui:tmw/272/effect/broadcast/create
execute if score $broadcast_type ui_temp matches 8 run function ui:tmw/272/effect/broadcast/discard_check

scoreboard players reset $lore_count ui_temp
scoreboard players reset $broadcast_name ui_temp
