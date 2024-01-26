scoreboard players set $activation_checker ui_temp 1

execute store result score $time ui_temp run time query gametime
execute store result score $cooltime ui_temp run data get storage ui:temp skill.ct
scoreboard players operation $cooltime ui_temp += $time ui_temp
scoreboard players operation $ct ui_temp = $cooltime ui_temp