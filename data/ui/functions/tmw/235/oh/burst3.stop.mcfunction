# バースト回数記録
    scoreboard players set $burst ui_temp 0
    execute at @s run playsound block.tripwire.detach player @a ~ ~ ~ 1 1.4 0
    execute at @s run playsound block.iron_trapdoor.open player @a ~ ~ ~ 0.8 1.2 0

# クリック回数リセット
    scoreboard players reset @s ui_use1