#
execute if score $broadcast_type ui_temp matches ..2 unless data storage ui:temp card.name if data storage ui:temp card.Name run data modify storage ui:temp card.name set from storage ui:temp card.Name
execute if score $broadcast_type ui_temp matches ..2 unless data storage ui:temp card.lore if data storage ui:temp card.Lore run data modify storage ui:temp card.lore set from storage ui:temp card.Lore

execute store result score $lore_count ui_temp run data get storage ui:temp card.lore
execute if score $broadcast_type ui_temp matches 3 store result score $lore_count ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[0].tag.display.Lore
execute if score $broadcast_type ui_temp matches 4 store result score $lore_count ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward[0].tag.display.Lore

scoreboard players set $broadcast_name ui_temp 1
execute if score $broadcast_type ui_temp matches ..2 unless data storage ui:temp card.name run scoreboard players set $broadcast_name ui_temp 0
execute if score $broadcast_type ui_temp matches ..2 if data storage ui:temp card{name:''} run scoreboard players set $broadcast_name ui_temp 0
execute if score $broadcast_type ui_temp matches ..2 if data storage ui:temp card{name:""} run scoreboard players set $broadcast_name ui_temp 0
execute if score $broadcast_type ui_temp matches 3 unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[0].tag.display.Name run scoreboard players set $broadcast_name ui_temp 0
execute if score $broadcast_type ui_temp matches 3 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[0].tag.display{Name:''} run scoreboard players set $broadcast_name ui_temp 0
execute if score $broadcast_type ui_temp matches 3 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[0].tag.display{Name:""} run scoreboard players set $broadcast_name ui_temp 0

#tellraw @a [{"text":"type:"},{"score":{"name": "$broadcast_type","objective": "ui_temp"}},{"text":" name:"},{"score":{"name": "$broadcast_name","objective": "ui_temp"}}]

#execute if score $broadcast_type ui_temp matches -1 if score $broadcast_name ui_temp matches 1 run function ui:tmw/272/effect/broadcast/debug
execute if score $broadcast_type ui_temp matches 1 if score $broadcast_name ui_temp matches 1 run function ui:tmw/272/effect/broadcast/effect
execute if score $broadcast_type ui_temp matches 2 if score $broadcast_name ui_temp matches 1 run function ui:tmw/272/effect/broadcast/after_effect
execute if score $broadcast_type ui_temp matches 3 if score $broadcast_name ui_temp matches 1 run function ui:tmw/272/effect/broadcast/only_one
execute if score $broadcast_type ui_temp matches 4 run function ui:tmw/272/effect/broadcast/reward

scoreboard players reset $lore_count ui_temp
scoreboard players reset $broadcast_name ui_temp
