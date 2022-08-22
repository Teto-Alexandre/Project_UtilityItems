# 爆発
scoreboard players remove @s ui_br 1
tag @s[scores={ui_br=..0}] add ex
particle firework ~ ~ ~ 0 0 0 0 1 force

# 個別
execute as @s[scores={ui_gms=-1}] run function ui:tmw/242/fragment/-1