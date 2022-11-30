# バースト回数記録
    scoreboard players operation $ishold ui_temp = $burst ui_temp
    execute store result score $burst ui_temp run data get storage ui:gun temp.Burst
    scoreboard players operation $ishold ui_temp *= $burst ui_temp
    execute store result score $ishold ui_temp run scoreboard players operation $ishold ui_temp /= #10 ui_num
    scoreboard players set $burst ui_temp 0
    execute at @s run playsound block.piston.extend player @a ~ ~ ~ 1 0.8 0
    execute at @s run playsound block.tripwire.click_on player @a ~ ~ ~ 1 0.6 0

# クリック回数リセット
    scoreboard players reset @s ui_use1