#
execute if score $is ui_temp matches 1 run playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 1.8
execute if score $is ui_temp matches 1 run particle crit ~ ~ ~ 0.3 0.3 0.3 1 10 force
execute if score $is ui_temp matches 17 run playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 1.8
execute if score $is ui_temp matches 17 run particle crit ~ ~ ~ 0.3 0.3 0.3 1 10 force
execute if score $is ui_temp matches 33 run playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 1.8
execute if score $is ui_temp matches 33 run particle crit ~ ~ ~ 0.3 0.3 0.3 1 10 force

#
execute if score $is ui_temp matches 33.. run kill @s
