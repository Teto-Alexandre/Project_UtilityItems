#
scoreboard players set $boost ui_temp 0
execute if entity @a[tag=ui_temp_player,scores={ui_tmw601_accessory=5004}] run scoreboard players set $boost ui_temp 1
#execute if score $boost ui_temp matches 1 run 

#
execute if score @s ui_is2 matches 1 if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10032/particle/red_slash1
execute if score @s ui_is2 matches 1 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_slash2
execute if score @s ui_is2 matches 1 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_slash_hit
execute if score @s ui_is2 matches 1 if score $is ui_temp matches 5 run function ui:common/particle/ss/downer/10032/particle/red_slash3

#
execute if score @s ui_is2 matches 2 if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10032/particle/red_slash1_rot
execute if score @s ui_is2 matches 2 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_slash2_rot
execute if score @s ui_is2 matches 2 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_slash_hit_rot
execute if score @s ui_is2 matches 2 if score $is ui_temp matches 5 run function ui:common/particle/ss/downer/10032/particle/red_slash3_rot

#
execute if score @s ui_is2 matches 3 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_slash_big
execute if score @s ui_is2 matches 3 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_slash_hit_big

#
execute if score @s ui_is2 matches 4 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_slash_bigrot
execute if score @s ui_is2 matches 4 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_slash_hit_bigrot

#
execute if score @s ui_is2 matches 5 if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10032/particle/red_slash1_rot
execute if score @s ui_is2 matches 5 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_slash2_rot
execute if score @s ui_is2 matches 5 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_slash_hit_rot2
execute if score @s ui_is2 matches 5 if score $is ui_temp matches 5 run function ui:common/particle/ss/downer/10032/particle/red_slash3_rot

#
execute if score @s ui_is2 matches 6 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_slash_bigrot
execute if score @s ui_is2 matches 6 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_slash_hit_bigrot2

#
execute if score @s ui_is2 matches 7 if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10032/particle/red_slash1_rot_s
execute if score @s ui_is2 matches 7 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_slash2_rot_s
execute if score @s ui_is2 matches 7 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_slash_hit_rot_s
execute if score @s ui_is2 matches 7 if score $is ui_temp matches 5 run function ui:common/particle/ss/downer/10032/particle/red_slash3_rot_s
#teleport @s ^2 ^ ^

#
execute if score @s ui_is2 matches 8 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_stab
execute if score @s ui_is2 matches 8 if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10032/particle/red_stab_hit
#teleport @s ^2 ^ ^

execute if score $is ui_temp matches 5 run playsound entity.ender_dragon.flap player @a ~ ~ ~ 1 1.2
execute if score $is ui_temp matches 5 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 0.5
execute if score $is ui_temp matches 3 run playsound entity.wither.shoot player @a ~ ~ ~ 1 2

#
execute if score $is ui_temp matches 5.. run kill @s

#
scoreboard players reset $boost ui_temp