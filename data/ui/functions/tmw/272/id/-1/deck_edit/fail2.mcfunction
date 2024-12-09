# 発動失敗
playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 2 0
particle dust 0 0 0 1 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force

#
tellraw @s ["",{"text":" > ","color":"gray"},{"text":"デッキ出現位置が塞がっている！"}]