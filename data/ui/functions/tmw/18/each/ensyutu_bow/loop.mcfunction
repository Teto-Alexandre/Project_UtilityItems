particle dust 1 0 0 1.5 ~ ~ ~ 0 0 0 0 1 force
execute positioned ~ ~ ~ as @e[dx=0,type=!#ui:unhurtable,type=!player] run damage @s 10 player_attack by @s

scoreboard players remove #loop test 1
execute if score #loop test matches 1.. positioned ^ ^ ^1 run function ui:tmw/18/each/ensyutu_bow/loop