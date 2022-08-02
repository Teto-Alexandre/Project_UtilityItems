# キューバンボム

# 常時実行
    execute if score @s ui_is matches 1 run playsound block.lever.click player @a ~ ~ ~ 1 0.9 0
    execute if score @s ui_is matches 22 run playsound block.tripwire.click_on player @a ~ ~ ~ 1 1.4 0
    execute if score @s ui_is matches 26 run playsound block.tripwire.click_on player @a ~ ~ ~ 1 1.4 0
    execute if score @s ui_is matches 30 run playsound block.tripwire.click_on player @a ~ ~ ~ 1 1.4 0
    execute if score @s ui_is matches 40.. run tag @s add ui_237_sub_explode

# 処理終了
    execute unless block ~ ~-0.1 ~ #ui:nocol run tag @s add ui_237_sub_stop
    execute unless block ~0.3 ~ ~ #ui:nocol run tag @s add ui_237_sub_stop
    execute unless block ~-0.3 ~ ~ #ui:nocol run tag @s add ui_237_sub_stop
    execute unless block ~ ~ ~0.3 #ui:nocol run tag @s add ui_237_sub_stop
    execute unless block ~ ~ ~-0.3 #ui:nocol run tag @s add ui_237_sub_stop
    execute unless block ~ ~0.5 ~ #ui:nocol run tag @s add ui_237_sub_stop
    execute if score @s ui_uses matches 2.. run tag @s add ui_237_sub_stop
    execute as @s[tag=ui_237_sub_stop] run scoreboard players add @s ui_is 1
    execute as @s[tag=ui_237_sub_stop,scores={ui_is=1}] run data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0001d,0.0d]}

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/108/end