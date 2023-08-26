#
execute store result score $type ui_temp run data get entity @s SelectedItem.tag.tmw.type
scoreboard players operation $id ui_temp = @s ui_id
scoreboard players operation $team ui_temp = @s ui_team

#
#execute unless score @s ui_tmw_id_old matches 270 run scoreboard players set @s ui_st2 0

#
tag @s add ui_temp_player

#
execute if score $type ui_temp matches 1 if entity @s[tag=tmw_use_n] at @s align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~-0.5 ~ #ui:nocol run function ui:tmw/270/id/1down
execute if score $type ui_temp matches 1 if entity @s[tag=tmw_use_n] at @s align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~2.5 ~ #ui:nocol run function ui:tmw/270/id/1up

#
execute if entity @s[tag=ui_temp_del] run item replace entity @s weapon.mainhand with air

#
tag @s remove ui_temp_del
tag @s remove ui_temp_player