#
    execute if score $reloadtime.temp ui_temp matches 10 at @s run playsound item.flintandsteel.use player @a ~ ~ ~ 1 1 0
    execute if score $reloadtime.temp ui_temp matches 7 at @s run playsound block.iron_door.close player @a ~ ~ ~ 1 2 0
    execute if score $reloadtime.temp ui_temp matches 0 at @s run playsound block.piston.extend player @a ~ ~ ~ 1 2 0
