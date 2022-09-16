# タメ
    execute if score $ishold ui_temp = $burst.max ui_temp at @s run playsound block.iron_door.open player @s ~ ~ ~ 1 1.2 0
    execute if score $ishold ui_temp < $burst.max ui_temp at @s run playsound block.lever.click player @a ~ ~ ~ 0.6 1.4 0
    execute unless score $ishold ui_temp <= $burst.max ui_temp at @s positioned ~ ~1 ~ run particle electric_spark ^ ^ ^0.2 0.5 0.5 0.5 0.3 2 force @s
    execute if score $ishold ui_temp <= $burst.max ui_temp run scoreboard players set $changed ui_temp 1
    execute if score $ishold ui_temp <= $burst.max ui_temp run scoreboard players add $ishold ui_temp 1