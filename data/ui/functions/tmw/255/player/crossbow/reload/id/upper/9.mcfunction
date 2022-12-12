# Rocket - ITEM_BREAK-1-1-0 PISTON_RETRACT-1-1-0
    execute if score $reloadtime.temp ui_temp matches 70 at @s run playsound entity.item.break player @a ~ ~ ~ 1 1 0
    execute if score $reloadtime.temp ui_temp matches 3 at @s run playsound block.piston.extend player @a ~ ~ ~ 1 2 0
    execute if score $reloadtime.temp ui_temp matches 0 at @s run playsound block.piston.extend player @a ~ ~ ~ 1 2 0
