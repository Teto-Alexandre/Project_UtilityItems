#1tickに1回

#
execute if score @s ui_use1 matches 1.. run function ui:tmw/257/use/main

#
execute at @s as @e[type=potion,distance=..25] at @s run particle firework ~ ~ ~ 0 0 0 0.02 1 force @a[scores={ui_tmw_id=257}]