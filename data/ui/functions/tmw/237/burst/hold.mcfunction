# タメ
    execute if score $ishold ui_temp = $burst.max ui_temp at @s run playsound block.iron_door.open player @s ~ ~ ~ 1 1.2 0
    execute if score $ishold ui_temp < $burst.max ui_temp at @s run playsound block.lever.click player @a ~ ~ ~ 0.6 1.4 0
    execute if score $bursttype ui_temp matches 11 if score $shotmode ui_temp matches 1 if score $ishold ui_temp < $burst.max ui_temp at @s run scoreboard players set $shottime ui_temp 0
    execute if score $bursttype ui_temp matches 11 if score $shotmode ui_temp matches 2 if score $ishold ui_temp < $burst.max ui_temp at @s run scoreboard players add $chargetime ui_temp 1
    execute unless score $ishold ui_temp <= $burst.max ui_temp at @s positioned ~ ~0.1 ~ run particle end_rod ~ ~ ~ 0.5 0.1 0.5 0.05 1 force
    execute if score $ishold ui_temp <= $burst.max ui_temp run scoreboard players set $changed ui_temp 1
    execute if score $ishold ui_temp <= $burst.max ui_temp run scoreboard players add $ishold ui_temp 1
    execute if score $bursttype ui_temp matches 12 if score $ishold ui_temp > $burst.max ui_temp at @s run scoreboard players operation $multibullet ui_temp = $multibulletmax ui_temp