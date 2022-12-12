# アサルトライフル - FIRE_IGNITE-1-1-4,DOOR_OPEN-1-2-6,FIRE_IGNITE-1-1-2,HURT_FLESH-1-0-3,DOOR_CLOSE-1-2-4
    execute if score $reloadtime.temp ui_temp matches 36 at @s run playsound item.flintandsteel.use player @a ~ ~ ~ 1 1 0
    execute if score $reloadtime.temp ui_temp matches 30 at @s run playsound block.wooden_door.open player @a ~ ~ ~ 1 2 0
    execute if score $reloadtime.temp ui_temp matches 28 at @s run playsound item.flintandsteel.use player @a ~ ~ ~ 1 1 0
    execute if score $reloadtime.temp ui_temp matches 25 at @s run playsound entity.player.hurt player @a ~ ~ ~ 1 0.5 0
    execute if score $reloadtime.temp ui_temp matches 21 at @s run playsound block.wooden_door.close player @a ~ ~ ~ 1 2 0
    execute if score $reloadtime.temp ui_temp matches 3 at @s run playsound block.piston.extend player @a ~ ~ ~ 1 2 0
    execute if score $reloadtime.temp ui_temp matches 0 at @s run playsound block.piston.extend player @a ~ ~ ~ 1 2 0
