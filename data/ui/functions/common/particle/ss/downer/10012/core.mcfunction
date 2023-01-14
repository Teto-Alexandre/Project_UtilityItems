#
execute rotated ~ 0 run teleport @s ~ ~ ~ ~0.5 ~

scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #5 ui_num

execute if score $is ui_temp matches 1.. if score $is_temp ui_temp matches 1 at @s run function ui:common/particle/ss/downer/10012/period1
execute if score $is ui_temp matches 101.. if score $is_temp ui_temp matches 1 at @s run function ui:common/particle/ss/downer/10012/period2
execute if score $is ui_temp matches 201.. if score $is_temp ui_temp matches 1 at @s run function ui:common/particle/ss/downer/10012/period3
execute if score $is ui_temp matches 301..400 if score $is_temp ui_temp matches 1 at @s run function ui:common/particle/ss/downer/10012/period4
execute if score $is ui_temp matches 401 at @s run function ui:common/particle/ss/downer/10012/period5

particle minecraft:dust 1 1 1 2 ~ ~15 ~ 0.2 3 0.2 0 2 force @a

execute if score $is ui_temp matches 1..100 run particle minecraft:note ~ ~1 ~ 1 1 1 0 1 force @a
execute if score $is ui_temp matches 1..100 run particle minecraft:dust 1 1 1 2 ~ ~1 ~ 1 1 1 0 1 force @a
execute if score $is ui_temp matches 1 run playsound block.bell.resonate player @a ~ ~ ~ 1 0.8
execute if score $is ui_temp matches 21 run playsound block.bell.resonate player @a ~ ~ ~ 1 0.8
execute if score $is ui_temp matches 41 run playsound block.bell.resonate player @a ~ ~ ~ 1 0.8
execute if score $is ui_temp matches 41 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 2 0 2 0 50 force @a
execute if score $is ui_temp matches 61 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 2 0 2 0 50 force @a
execute if score $is ui_temp matches 81 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 2 0 2 0 50 force @a
execute if score $is ui_temp matches 101 run playsound block.bell.use player @a ~ ~ ~ 1 0.8
execute if score $is ui_temp matches 101 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 3 0 3 0 100 force @a

execute if score $is ui_temp matches 101..200 run particle minecraft:note ~ ~1 ~ 3 1 3 0 5 force @a
execute if score $is ui_temp matches 101..200 run particle minecraft:dust 1 1 1 2 ~ ~1 ~ 3 1 3 0 5 force @a
execute if score $is ui_temp matches 101 run playsound block.bell.resonate player @a ~ ~ ~ 2 0.8
execute if score $is ui_temp matches 121 run playsound block.bell.resonate player @a ~ ~ ~ 2 0.8
execute if score $is ui_temp matches 141 run playsound block.bell.resonate player @a ~ ~ ~ 2 0.8
execute if score $is ui_temp matches 141 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 4 0 4 0 200 force @a
execute if score $is ui_temp matches 161 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 4 0 4 0 200 force @a
execute if score $is ui_temp matches 181 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 4 0 4 0 200 force @a
execute if score $is ui_temp matches 201 run playsound block.bell.use player @a ~ ~ ~ 2 0.65
execute if score $is ui_temp matches 201 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 6 0 6 0 400 force @a

execute if score $is ui_temp matches 201..300 run particle minecraft:note ~ ~1 ~ 6 1 6 0 15 force @a
execute if score $is ui_temp matches 201..300 run particle minecraft:dust 1 1 1 2 ~ ~1 ~ 6 1 6 0 15 force @a
execute if score $is ui_temp matches 201 run playsound block.bell.resonate player @a ~ ~ ~ 3 0.8
execute if score $is ui_temp matches 221 run playsound block.bell.resonate player @a ~ ~ ~ 3 0.8
execute if score $is ui_temp matches 241 run playsound block.bell.resonate player @a ~ ~ ~ 3 0.8
execute if score $is ui_temp matches 241 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 7 0 7 0 500 force @a
execute if score $is ui_temp matches 261 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 7 0 7 0 500 force @a
execute if score $is ui_temp matches 281 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 7 0 7 0 500 force @a
execute if score $is ui_temp matches 301 run playsound block.bell.use player @a ~ ~ ~ 3 0.5
execute if score $is ui_temp matches 301 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 10 0 10 0 1000 force @a

execute if score $is ui_temp matches 301..400 run particle minecraft:note ~ ~1 ~ 10 1 10 0 25 force @a
execute if score $is ui_temp matches 301..400 run particle minecraft:dust 1 1 1 2 ~ ~1 ~ 10 1 10 0 25 force @a
execute if score $is ui_temp matches 301 run playsound block.bell.resonate player @a ~ ~ ~ 4 0.8
execute if score $is ui_temp matches 321 run playsound block.bell.resonate player @a ~ ~ ~ 4 0.8
execute if score $is ui_temp matches 341 run playsound block.bell.resonate player @a ~ ~ ~ 4 0.8
execute if score $is ui_temp matches 341 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 9 0 9 0 1000 force @a
execute if score $is ui_temp matches 361 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 9 0 9 0 1000 force @a
execute if score $is ui_temp matches 381 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 9 0 9 0 1000 force @a
execute if score $is ui_temp matches 401 run playsound block.bell.use player @a ~ ~ ~ 4 0.5
execute if score $is ui_temp matches 401 run particle minecraft:dust 1 1 1 1 ~ ~ ~ 15 0 15 0 3000 force @a

execute if score $is ui_temp matches 261 run playsound block.portal.trigger player @a ~ ~ ~ 6 0.5
execute if score $is ui_temp matches 331 run playsound block.portal.trigger player @a ~ ~ ~ 6 1
execute if score $is ui_temp matches 366 run playsound block.portal.trigger player @a ~ ~ ~ 6 2
execute if score $is ui_temp matches 401 run playsound block.end_portal.spawn player @a ~ ~ ~ 8 0.8
execute if score $is ui_temp matches 401 run playsound item.totem.use player @a ~ ~ ~ 8 0.5

#
#say @e[predicate=ui:load_unhurtable,tag=!ui_temp_team]
execute if score $is ui_temp matches 1 at @s as @e[distance=..3,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/damage1
execute if score $is ui_temp matches 1 at @s as @e[distance=..3,predicate=ui:load_unhurtable,tag=ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/heal

execute if score $is ui_temp matches 101 at @s as @e[distance=..3,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/damage2
execute if score $is ui_temp matches 101 at @s as @e[distance=3..7,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/damage1
execute if score $is ui_temp matches 101 at @s as @e[distance=..7,predicate=ui:load_unhurtable,tag=ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/heal

execute if score $is ui_temp matches 201 at @s as @e[distance=..3,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/damage3
execute if score $is ui_temp matches 201 at @s as @e[distance=3..7,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/damage2
execute if score $is ui_temp matches 201 at @s as @e[distance=7..12,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/damage1
execute if score $is ui_temp matches 201 at @s as @e[distance=..12,predicate=ui:load_unhurtable,tag=ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/heal

execute if score $is ui_temp matches 301 at @s as @e[distance=..7,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/damage4
execute if score $is ui_temp matches 301 at @s as @e[distance=7..12,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/damage3
execute if score $is ui_temp matches 301 at @s as @e[distance=12..22,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/damage2
execute if score $is ui_temp matches 301 at @s as @e[distance=..22,predicate=ui:load_unhurtable,tag=ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/heal

execute if score $is ui_temp matches 401 at @s as @e[distance=..7,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/damage5
execute if score $is ui_temp matches 401 at @s as @e[distance=7..12,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/damage4
execute if score $is ui_temp matches 401 at @s as @e[distance=12..22,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/damage3
execute if score $is ui_temp matches 401 at @s as @e[distance=22..50,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/damage1
execute if score $is ui_temp matches 401 at @s as @e[distance=..22,predicate=ui:load_unhurtable,tag=ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/heal2
execute if score $is ui_temp matches 401 at @s as @e[distance=22..50,predicate=ui:load_unhurtable,tag=ui_temp_team] at @s run function ui:common/particle/ss/downer/10012/heal

#
execute if score $is ui_temp matches 401.. run kill @s
