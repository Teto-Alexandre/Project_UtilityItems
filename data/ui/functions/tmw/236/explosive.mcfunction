#
    execute as @s[scores={ui_uses=40..},nbt={Item:{tag:{tmw:{type:1}}}}] run function ui:tmw/236/ex1
    execute as @s[nbt={Item:{tag:{tmw:{type:1}}}}] run particle soul_fire_flame ~ ~0.3 ~ 0 0 0 0.1 1 force
    execute as @s[scores={ui_uses=40..},nbt={Item:{tag:{tmw:{type:2}}}}] run function ui:tmw/236/ex2
    execute as @s[scores={ui_uses=40..},nbt={Item:{tag:{tmw:{type:3}}}}] run function ui:tmw/236/ex3
    execute as @s[nbt={Item:{tag:{tmw:{type:4}}}}] run function ui:tmw/236/ex4
    execute as @s[scores={ui_uses=40..},nbt={Item:{tag:{tmw:{type:5}}}}] run function ui:tmw/236/ex5
    execute as @s[scores={ui_uses=5..},nbt={Item:{tag:{tmw:{type:5}}}}] if entity @e[predicate=ui:load_unhurtable,distance=..3] run function ui:tmw/236/ex5
    execute as @s[scores={ui_uses=40..},nbt={Item:{tag:{tmw:{type:6}}}}] run function ui:tmw/236/ex6
    execute as @s[nbt={Item:{tag:{tmw:{type:7}}}}] run function ui:tmw/236/ex7
    execute as @s[scores={ui_uses=40..},nbt={Item:{tag:{tmw:{type:8}}}}] run function ui:tmw/236/ex8

#
    particle dust 0.3 1 1 1 ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    particle dust 0.7 1 1 1 ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    scoreboard players add @s ui_uses 1