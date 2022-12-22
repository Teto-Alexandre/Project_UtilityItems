summon marker ^ ^ ^2 {Tags:["ui_temp_marker"]}
execute if block ^ ^ ^2 #ui:nocol as @e[tag=ui_temp_marker] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function ui:tmw/15/20.2build
execute if block ^ ^ ^2 oak_planks as @e[tag=ui_temp_marker] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function ui:tmw/15/20.2black
execute as @e[tag=ui_temp_marker] run kill @s