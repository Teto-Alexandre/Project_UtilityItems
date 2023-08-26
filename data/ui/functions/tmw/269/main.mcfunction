#
execute store result score $type ui_temp run data get entity @s SelectedItem.tag.tmw.type

#
execute unless score @s ui_tmw_id_old matches 267 run scoreboard players set @s ui_st2 0

#
tag @s add ui_temp_player

#
execute if score $type ui_temp matches 1 run function ui:tmw/267/id/1
execute if score $type ui_temp matches 2 run function ui:tmw/267/id/2
execute if score $type ui_temp matches 3 run function ui:tmw/267/id/3
execute if score $type ui_temp matches 4 run function ui:tmw/267/id/4
execute if score $type ui_temp matches 5 run function ui:tmw/267/id/5

#
execute if entity @s[tag=ui_temp_del] run item replace entity @s weapon.mainhand with air

#
tag @s remove ui_temp_del
tag @s remove ui_temp_player