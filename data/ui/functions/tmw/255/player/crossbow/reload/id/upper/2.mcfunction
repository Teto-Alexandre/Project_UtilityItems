#
    execute if score $reloadtime.temp ui_temp matches 15 at @s run playsound block.iron_trapdoor.open player @a ~ ~ ~ 1 1.4 0
    execute if score $reloadtime.temp ui_temp matches 6..14 at @s run playsound block.note_block.hat player @a ~ ~ ~ 1 1.2 0
    execute if score $reloadtime.temp ui_temp matches 5 at @s run playsound block.iron_trapdoor.close player @a ~ ~ ~ 1 1.4 0
