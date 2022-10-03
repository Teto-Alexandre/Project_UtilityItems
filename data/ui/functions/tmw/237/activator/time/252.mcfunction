# スーパースター
    scoreboard players operation $time ui_temp %= #2 ui_num
    execute if score $time ui_temp matches 0 if score $sptime ui_temp matches 3.. run playsound block.lava.pop player @a ~ ~ ~ 0.6 1 0
    execute if score $sptime ui_temp matches 20 run playsound block.amethyst_block.break player @a ~ ~ ~ 2 1.2 0
    execute if score $sptime ui_temp matches 15 run playsound block.amethyst_block.break player @a ~ ~ ~ 2 1.2 0
    execute if score $sptime ui_temp matches 10 run playsound block.amethyst_block.break player @a ~ ~ ~ 2 1.2 0
    execute if score $sptime ui_temp matches 18 run playsound block.amethyst_block.chime player @a ~ ~ ~ 1.6 1 0
    execute if score $sptime ui_temp matches 13 run playsound block.amethyst_block.chime player @a ~ ~ ~ 1.6 1 0
    execute if score $sptime ui_temp matches 8 run playsound block.amethyst_block.chime player @a ~ ~ ~ 1.6 1 0
    execute if score $sptime ui_temp matches 1 run playsound block.conduit.deactivate player @a ~ ~ ~ 1 1.2 0
    particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 2 force