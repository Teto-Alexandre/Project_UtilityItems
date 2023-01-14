#
execute rotated ~ 0 run teleport @s ~ ~ ~ ~0.5 ~

scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #5 ui_num

execute if score $is ui_temp matches 1.. if score $is_temp ui_temp matches 1 at @s run function ui:common/particle/ss/downer/10013/period

execute if score $is ui_temp matches 1 run playsound item.flintandsteel.use player @a ~ ~ ~ 1 0.8
execute if score $is ui_temp matches 1 run particle flame ~ ~0.1 ~ 3 0 3 0.01 50 force @a
execute if score $is ui_temp matches 6 run playsound item.flintandsteel.use player @a ~ ~ ~ 1 1.2
execute if score $is ui_temp matches 6 run particle flame ~ ~0.1 ~ 3 0 3 0.01 50 force @a
execute if score $is ui_temp matches 6 run particle lava ~ ~0.1 ~ 3 0 3 0 30 force @a
execute if score $is ui_temp matches 11 run playsound entity.generic.explode player @a ~ ~ ~ 1 0.5
execute if score $is ui_temp matches 11 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
execute if score $is ui_temp matches 11 run particle lava ~ ~ ~ 1 1 1 0 20 force @a
execute if score $is ui_temp matches 14 run playsound entity.generic.explode player @a ~ ~ ~ 1 0.5
execute if score $is ui_temp matches 14 run particle explosion_emitter ~ ~ ~ 3 0 3 0 2 force @a
execute if score $is ui_temp matches 14 run particle lava ~ ~ ~ 3 1 3 0 50 force @a
execute if score $is ui_temp matches 17 run playsound entity.generic.explode player @a ~ ~5 ~ 1 0.5
execute if score $is ui_temp matches 17 run particle explosion_emitter ~ ~5 ~ 2 0 2 0 1 force @a
execute if score $is ui_temp matches 17 run particle lava ~ ~5 ~ 2 1 2 0 20 force @a
execute if score $is ui_temp matches 20 run playsound entity.generic.explode player @a ~ ~ ~ 1 0.5
execute if score $is ui_temp matches 20 run particle explosion_emitter ~ ~ ~ 3.5 0 3.5 0 3 force @a
execute if score $is ui_temp matches 20 run particle lava ~ ~ ~ 3.5 1 3.5 0 80 force @a
execute if score $is ui_temp matches 23 run playsound entity.generic.explode player @a ~ ~5 ~ 1 0.5
execute if score $is ui_temp matches 23 run particle explosion_emitter ~ ~5 ~ 3 0 3 0 2 force @a
execute if score $is ui_temp matches 23 run particle lava ~ ~5 ~ 3 1 3 0 50 force @a
execute if score $is ui_temp matches 26 run playsound entity.generic.explode player @a ~ ~10 ~ 1 0.5
execute if score $is ui_temp matches 26 run particle explosion_emitter ~ ~10 ~ 2 0 2 0 1 force @a
execute if score $is ui_temp matches 26 run particle lava ~ ~10 ~ 2 1 2 0 20 force @a
execute if score $is ui_temp matches 29 run playsound entity.generic.explode player @a ~ ~15 ~ 1 0.5
execute if score $is ui_temp matches 29 run particle explosion_emitter ~ ~15 ~ 0 0 0 0 1 force @a
execute if score $is ui_temp matches 29 run particle lava ~ ~15 ~ 1 1 1 0 10 force @a

#
#say @e[predicate=ui:load_unhurtable,tag=!ui_temp_team]
execute if score $is ui_temp matches 11 as @e[distance=..4,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10013/damage1
execute if score $is ui_temp matches 14 as @e[distance=..7,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10013/damage1
execute if score $is ui_temp matches 17 positioned ~ ~5 ~ as @e[distance=..6,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10013/damage1
execute if score $is ui_temp matches 20 as @e[distance=..8,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10013/damage1
execute if score $is ui_temp matches 23 positioned ~ ~5 ~ as @e[distance=..7,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10013/damage1
execute if score $is ui_temp matches 26 positioned ~ ~10 ~ as @e[distance=..5,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10013/damage1
execute if score $is ui_temp matches 29 positioned ~ ~15 ~ as @e[distance=..4,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10013/damage1

#
execute if score $is ui_temp matches 39.. run kill @s
