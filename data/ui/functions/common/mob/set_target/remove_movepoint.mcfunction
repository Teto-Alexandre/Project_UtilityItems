#
execute as @s[nbt={HurtTime:9s}] run function ui:common/mob/set_target/remove_movepoint_do

scoreboard players add @s ui_is 1
execute if score @s ui_is matches 100.. run function ui:common/mob/set_target/remove_movepoint_delay
