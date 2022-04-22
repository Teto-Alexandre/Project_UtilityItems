#有効化

#再帰するたびに1°下を向いてレーザー発射
    scoreboard players remove @s ui_fc 1
    teleport @s ~ ~ ~ ~ ~1
    summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_101_2_1"]}
    execute rotated as @s run teleport @e[tag=tmw_101_2_1] ^ ^ ^5 ~ ~
    execute as @e[tag=tmw_101_2_1] at @s run function ui:tmw/101/101_2/laser

execute as @s[scores={ui_fc=1..}] at @s run function ui:tmw/101/101_2/loop
kill @s[scores={ui_fc=..0}]
