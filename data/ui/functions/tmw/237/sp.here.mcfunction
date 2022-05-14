# その場系スペシャルウェポン発動

# 範囲塗り
    execute if score $sptype ui_temp matches 101 run execute if score $color ui_temp matches 1 run fill ~-9 ~-9 ~-9 ~9 ~9 ~9 light_blue_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 run execute if score $color ui_temp matches 2 run fill ~-9 ~-9 ~-9 ~9 ~9 ~9 pink_wool replace #ui:wools
    execute if score $sptype ui_temp matches 101 run playsound entity.wither.death player @a ~ ~ ~ 1 0.8 0
    execute if score $sptype ui_temp matches 101 run particle explosion_emitter ~ ~ ~ 5 5 5 0 20 force

# スーパースター
    execute if score $sptype ui_temp matches 102 run effect give @s resistance 15 126 false
    execute if score $sptype ui_temp matches 102 run effect give @s strength 15 4 false
    execute if score $sptype ui_temp matches 102 run effect give @s glowing 15 0 false
    execute if score $sptype ui_temp matches 102 run playsound entity.player.levelup player @a ~ ~ ~ 3 0.5 0
    execute if score $sptype ui_temp matches 102 run particle totem_of_undying ~ ~ ~ 5 5 5 0.02 20 force