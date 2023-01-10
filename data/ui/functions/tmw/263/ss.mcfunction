#
    execute as @a[tag=tmw_263_give_1] run function ui:tmw/263/autogive
    execute as @a[tag=tmw_263_give_2] run function ui:tmw/263/autogive_f

#
    execute as @a[scores={ui_tmw_id=263}] at @s run function ui:tmw/263/tick
    execute as @a[scores={ui_tmw_id2=263}] at @s run function ui:tmw/263/tick
    execute as @e[tag=tmw_263_laser] run function ui:tmw/263/laser
    execute as @e[tag=tmw_263_activator] run function ui:tmw/263/activator

# 付属品
    execute if entity @a[tag=tmw_263_load] run schedule function ui:tmw/263/ss 1t append