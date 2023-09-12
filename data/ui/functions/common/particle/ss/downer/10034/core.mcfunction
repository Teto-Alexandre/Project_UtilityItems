#
#scoreboard players set $boost ui_temp 0
#execute if entity @a[tag=ui_temp_player,scores={ui_tmw601_accessory=5005}] run scoreboard players set $boost ui_temp 1
#execute if score $boost ui_temp matches 1 run 

#
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10034/particle/b_slash1
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10034/particle/b_slash2
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches 5 run function ui:common/particle/ss/downer/10034/particle/b_slash3
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches 7 run function ui:common/particle/ss/downer/10034/particle/b_slash4
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches 9 run function ui:common/particle/ss/downer/10034/particle/b_slash5
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10034/particle/b_slash_d_hit
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches 7 run playsound ui:sword player @a ~ ~ ~ 1 1
execute if score @s ui_is2 matches 1 at @s if score $is ui_temp matches 9.. run kill @s

#
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 1 positioned ~ ~1.8 ~ run function ui:common/particle/ss/downer/10034/particle/b_slash1
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 3 positioned ~ ~1.8 ~ run function ui:common/particle/ss/downer/10034/particle/b_slash2
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 5 positioned ~ ~1.8 ~ run function ui:common/particle/ss/downer/10034/particle/b_slash3
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 7 positioned ~ ~1.8 ~ run function ui:common/particle/ss/downer/10034/particle/b_slash4
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 9 positioned ~ ~1.8 ~ run function ui:common/particle/ss/downer/10034/particle/b_slash5
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 3 positioned ~ ~1.8 ~ run function ui:common/particle/ss/downer/10034/particle/b_slash_h_hit
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 7 run playsound block.anvil.land player @a ~ ~ ~ 1.5 0.6
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 9 run playsound entity.generic.explode player @a ~ ~ ~ 2 0.5
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 9 run playsound entity.generic.explode player @a ~ ~ ~ 2 0.5006
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 9 rotated ~90 0 run particle block iron_block ^ ^2 ^4.5 1.5 1.5 1.5 0 50 force
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 9 rotated ~90 0 positioned ^ ^0.15 ^4.5 run function ui:common/particle/ss/downer/10034/particle/b_slash_area
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 9 rotated ~90 0 positioned ^ ^0.15 ^4.5 run function ui:common/particle/ss/downer/10034/particle/b_slash_area_hit
execute if score @s ui_is2 matches 2 at @s if score $is ui_temp matches 9.. run kill @s

#
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 1.. run data merge storage ui:common {input:{Mode:"create",Var:-10034,Var2:4,Rand:{RotX:1,RotY:1}}}
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 1 run function ui:common/particle
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 3 run function ui:common/particle
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 5 run function ui:common/particle
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 7 run function ui:common/particle
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 9 run function ui:common/particle
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 11 run function ui:common/particle
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 13 run function ui:common/particle
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 15 run function ui:common/particle
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 17 run function ui:common/particle
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 19 run function ui:common/particle
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 21 run function ui:common/particle
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 23 run function ui:common/particle
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 25 run function ui:common/particle
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 1 run tag @e[distance=..3.5,predicate=ui:load_unhurtable,tag=!ui_temp_team] add ui_common_particle_-10034_3_damage
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 25 as @e[tag=ui_common_particle_-10034_3_damage] at @s run function ui:common/particle/ss/downer/10034/damage_m
#execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 7 run playsound ui:sword player @a ~ ~ ~ 1 1
execute if score @s ui_is2 matches 3 at @s if score $is ui_temp matches 25.. run kill @s

#
execute if score @s ui_is2 matches 4 at @s if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10034/particle/b_slash_m
execute if score @s ui_is2 matches 4 at @s if score $is ui_temp matches 1 if predicate ui:percentage/25 run playsound entity.player.attack.knockback player @a ~ ~ ~ 1 0.8
execute if score @s ui_is2 matches 4 at @s if score $is ui_temp matches 1 if predicate ui:percentage/25 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 2
execute if score @s ui_is2 matches 4 at @s if score $is ui_temp matches 1 if predicate ui:percentage/25 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.5
execute if score @s ui_is2 matches 4 at @s if score $is ui_temp matches 1 if predicate ui:percentage/25 run playsound ui.stonecutter.take_result player @a ~ ~ ~ 1 1
execute if score @s ui_is2 matches 4 at @s if score $is ui_temp matches 1 if predicate ui:percentage/25 run playsound minecraft:block.grindstone.use player @a ~ ~ ~ 1 1.8
execute if score @s ui_is2 matches 4 at @s if score $is ui_temp matches 1.. run kill @s

#
execute if score @s ui_is2 matches 5 at @s if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10034/particle/b_stab
execute if score @s ui_is2 matches 5 at @s if score $is ui_temp matches 1 run playsound ui:sword player @a ~ ~ ~ 1 1.2
execute if score @s ui_is2 matches 5 at @s if score $is ui_temp matches 1.. run kill @s

#
execute if score @s ui_is2 matches 6 at @s if score $is ui_temp matches 1.. run data merge storage ui:common {input:{Mode:"create",Var:-10034,Var2:4,Rand:{RotX:1,RotY:1}}}
execute if score @s ui_is2 matches 6 at @s if score $is ui_temp matches 1 run function ui:common/particle
execute if score @s ui_is2 matches 6 at @s if score $is ui_temp matches 16 as @e[tag=ui_common_particle_-10034_6_damage] at @s run function ui:common/particle/ss/downer/10034/damage_r
execute if score @s ui_is2 matches 6 at @s if score $is ui_temp matches 18 as @e[tag=ui_common_particle_-10034_6_damage] at @s run function ui:common/particle/ss/downer/10034/damage_r
execute if score @s ui_is2 matches 6 at @s if score $is ui_temp matches 20 as @e[tag=ui_common_particle_-10034_6_damage] at @s run function ui:common/particle/ss/downer/10034/damage_r2
execute if score @s ui_is2 matches 6 at @s if score $is ui_temp matches 20.. run kill @s

#
execute if score @s ui_is2 matches 7 at @s if score $is ui_temp matches 16 run data merge storage ui:common {input:{Mode:"create",Var:-10034,Var2:8,Rand:{Pos:5000,RotX:1,RotY:1}}}
execute if score @s ui_is2 matches 7 at @s if score $is ui_temp matches 16 at @e[tag=ui_common_particle_-10034_7_damage] positioned ~ ~1 ~ run function ui:common/particle
execute if score @s ui_is2 matches 7 at @s if score $is ui_temp matches 18 run data merge storage ui:common {input:{Mode:"create",Var:-10034,Var2:8,Rand:{Pos:5000,RotX:1,RotY:1}}}
execute if score @s ui_is2 matches 7 at @s if score $is ui_temp matches 18 at @e[tag=ui_common_particle_-10034_7_damage] positioned ~ ~1 ~ run function ui:common/particle
execute if score @s ui_is2 matches 7 at @s if score $is ui_temp matches 20 run data merge storage ui:common {input:{Mode:"create",Var:-10034,Var2:8,Rand:{Pos:5000,RotX:1,RotY:1}}}
execute if score @s ui_is2 matches 7 at @s if score $is ui_temp matches 20 at @e[tag=ui_common_particle_-10034_7_damage] positioned ~ ~1 ~ run function ui:common/particle
execute if score @s ui_is2 matches 7 at @s if score $is ui_temp matches 22 run data merge storage ui:common {input:{Mode:"create",Var:-10034,Var2:8,Rand:{Pos:5000,RotX:1,RotY:1}}}
execute if score @s ui_is2 matches 7 at @s if score $is ui_temp matches 22 at @e[tag=ui_common_particle_-10034_7_damage] positioned ~ ~1 ~ run function ui:common/particle
execute if score @s ui_is2 matches 7 at @s if score $is ui_temp matches 24 run data merge storage ui:common {input:{Mode:"create",Var:-10034,Var2:8,Rand:{Pos:5000,RotX:1,RotY:1}}}
execute if score @s ui_is2 matches 7 at @s if score $is ui_temp matches 24 at @e[tag=ui_common_particle_-10034_7_damage] positioned ~ ~1 ~ run function ui:common/particle
execute if score @s ui_is2 matches 7 at @s if score $is ui_temp matches 30 as @e[tag=ui_common_particle_-10034_7_damage] at @s run function ui:common/particle/ss/downer/10034/damage_c
execute if score @s ui_is2 matches 7 at @s if score $is ui_temp matches 30.. run kill @s

#
execute if score @s ui_is2 matches 8 at @s if score $is ui_temp matches 10 run function ui:common/particle/ss/downer/10034/particle/b_slash_c
execute if score @s ui_is2 matches 8 at @s if score $is ui_temp matches 10.. run kill @s

#
execute if score @s ui_is2 matches 9 at @s if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10034/particle/b_slash_k
execute if score @s ui_is2 matches 9 at @s if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10034/particle/b_slash_k_hit
execute if score @s ui_is2 matches 9 at @s if score $is ui_temp matches 3 run playsound entity.player.attack.knockback player @a ~ ~ ~ 1 0.6
execute if score @s ui_is2 matches 9 at @s if score $is ui_temp matches 3.. run kill @s

#
execute if score @s ui_is2 matches 10 at @s if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10034/particle/b_slash_k
execute if score @s ui_is2 matches 10 at @s if score $is ui_temp matches 3 run function ui:common/particle/ss/downer/10034/particle/b_slash_o_hit
execute if score @s ui_is2 matches 10 at @s if score $is ui_temp matches 3 run playsound entity.player.attack.knockback player @a ~ ~ ~ 1 0.6
execute if score @s ui_is2 matches 10 at @s if score $is ui_temp matches 3.. run kill @s