execute facing entity @e[tag=ui_temp_target,limit=1] eyes run teleport @s ^ ^ ^1 ~ ~
execute at @s unless block ~ ~ ~ #ui:nocol run teleport @s ^ ^ ^-2 ~ ~
execute at @s unless block ~ ~ ~ #ui:nocol run teleport @s ^ ^1 ^1 ~ ~
execute at @s unless block ~ ~ ~ #ui:nocol run teleport @s ^ ^-2 ^ ~ ~
execute at @s unless block ~ ~ ~ #ui:nocol run teleport @s ^1 ^1 ^ ~ ~
execute at @s unless block ~ ~ ~ #ui:nocol run teleport @s ^-2 ^ ^ ~ ~
scoreboard players set $count ui_temp 0

particle firework ~ ~1 ~ 0.5 0.5 0.5 0.5 7 force
particle dust 1 0.8 0 2 ~ ~1 ~ 0.6 0.6 0.6 0 5 force
playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 0.5 0.7 0
playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 0.5 1.4 0
