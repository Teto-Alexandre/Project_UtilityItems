# HG
    execute if score $reloadtime.temp ui_temp matches 21 at @s run playsound item.flintandsteel.use player @a ~ ~ ~ 1 1 0
    execute if score $reloadtime.temp ui_temp matches 15 at @s run playsound block.wooden_door.open player @a ~ ~ ~ 1 2 0
    execute if score $reloadtime.temp ui_temp matches 13 at @s run playsound item.flintandsteel.use player @a ~ ~ ~ 1 1 0
    execute if score $reloadtime.temp ui_temp matches 10 at @s run playsound entity.player.hurt player @a ~ ~ ~ 1 0.5 0
    execute if score $reloadtime.temp ui_temp matches 6 at @s run playsound block.wooden_door.close player @a ~ ~ ~ 1 2 0
    execute if score $reloadtime.temp ui_temp matches 3 at @s run playsound block.piston.extend player @a ~ ~ ~ 1 2 0
    execute if score $reloadtime.temp ui_temp matches 0 at @s run playsound block.piston.extend player @a ~ ~ ~ 1 2 0
