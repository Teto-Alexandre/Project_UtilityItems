#
execute if predicate ui:percentage/75 run particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 force @a[tag=ui_temp_player]

#
execute if score $is ui_temp matches 100.. run kill @s