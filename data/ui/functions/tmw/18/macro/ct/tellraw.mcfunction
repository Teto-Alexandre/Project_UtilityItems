scoreboard players operation $ct ui_temp -= $time ui_temp
scoreboard players operation $ct ui_temp /= #20 ui_num
scoreboard players add $ct ui_temp 1
tellraw @s ["",{"text":"> ","color": "red"},{"score":{"name": "$ct","objective": "ui_temp"},"color": "white"},{"text":"秒後に再使用可能になります","color": "gray"}]
playsound block.dispenser.fail player @s ~ ~ ~ 1 1.5 0