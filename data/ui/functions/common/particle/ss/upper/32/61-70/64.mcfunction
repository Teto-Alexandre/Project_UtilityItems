#

#
execute if score $is ui_temp matches 1.. run data merge storage ui:common {input:{Mode:"create",Var:-10034,Var2:4,Rand:{RotX:1,RotY:1}}}
execute if score $is ui_temp matches 1 run function ui:common/particle
execute if score $is ui_temp matches 3 run function ui:common/particle
execute if score $is ui_temp matches 5 run function ui:common/particle
execute if score $is ui_temp matches 7 run function ui:common/particle
execute if score $is ui_temp matches 9 run function ui:common/particle
execute if score $is ui_temp matches 11 run function ui:common/particle
execute if score $is ui_temp matches 13 run function ui:common/particle
execute if score $is ui_temp matches 15 run function ui:common/particle
execute if score $is ui_temp matches 17 run function ui:common/particle
execute if score $is ui_temp matches 19 run function ui:common/particle
execute if score $is ui_temp matches 21 run function ui:common/particle
execute if score $is ui_temp matches 23 run function ui:common/particle
execute if score $is ui_temp matches 25 run function ui:common/particle
execute if score $is ui_temp matches 27 run playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 1.5 1.8 0
execute if score $is ui_temp matches 27 run particle dust 1 1 1 1 ~ ~0.9 ~ 1 0 0 0 20 force
execute if score $is ui_temp matches 27 run particle dust 1 1 1 1 ~ ~0.9 ~ 0 1 0 0 20 force
execute if score $is ui_temp matches 27 run particle dust 1 1 1 1 ~ ~0.9 ~ 0 0 1 0 20 force
execute if score $is ui_temp matches 27 run particle squid_ink ~ ~0.9 ~ 1 1 1 0 80 force

#
execute if score $is ui_temp matches 25.. run kill @s