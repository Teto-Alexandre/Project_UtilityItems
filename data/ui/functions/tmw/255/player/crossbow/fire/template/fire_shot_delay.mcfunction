#
scoreboard players set $fire ui_temp 1
execute store result score $temp ui_temp run data get storage ui:gun temp.ShotCT
execute store result score $cooltime ui_temp run time query gametime
scoreboard players operation $cooltime ui_temp += $temp ui_temp
scoreboard players add $cooltime ui_temp 1

#
scoreboard players set $changed ui_temp 1
