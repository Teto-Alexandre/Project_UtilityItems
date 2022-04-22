#=======================================================================================================

execute store result score @s ui_calc1 run data get entity @s FallDistance 1

execute as @s[scores={ui_calc1=4..}] unless block ~ ~-3 ~ #ui:nocol run effect give @s slow_falling 1 0 true
execute as @s[scores={ui_calc1=4..}] unless block ~ ~-4 ~ #ui:nocol run effect give @s slow_falling 1 0 true
execute as @s[scores={ui_calc1=4..}] unless block ~ ~-5 ~ #ui:nocol run effect give @s slow_falling 1 0 true
execute as @s[scores={ui_calc1=4..}] unless block ~ ~-3 ~ #ui:nocol run particle cloud ~ ~-0.5 ~ 0.3 0.1 0.3 0.05 10 normal
execute as @s[scores={ui_calc1=4..}] unless block ~ ~-4 ~ #ui:nocol run particle cloud ~ ~-1.5 ~ 0.3 0.1 0.3 0.05 10 normal
execute as @s[scores={ui_calc1=4..}] unless block ~ ~-5 ~ #ui:nocol run particle cloud ~ ~-2.5 ~ 0.3 0.1 0.3 0.05 10 normal

#=======================================================================================================
