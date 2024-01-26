#
execute store result score $type ui_temp run data get entity @s SelectedItem.tag.tmw.type
scoreboard players set $changed ui_temp 0

#
#execute unless score @s ui_tmw_id_old matches 267 run scoreboard players set @s ui_st2 0

#
tag @s add ui_temp_player

#
data modify storage ui:skill temp set from entity @s SelectedItem.tag.tmw.skill
execute unless data storage ui:skill temp.now.First run function ui:tmw/18/changed/first
execute if data storage ui:skill temp.function.constant[0] at @s run function ui:tmw/18/queue/constant

# 逆変換
execute if score $changed ui_temp matches 1 run function ui:tmw/18/changed/core

#
execute if entity @s[tag=ui_temp_del] run item replace entity @s weapon.mainhand with air

#
tag @s remove ui_temp_del
tag @s remove ui_temp_player
