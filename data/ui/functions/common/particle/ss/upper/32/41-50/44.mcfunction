#

#
playsound entity.elder_guardian.curse player @a ~ ~ ~ 0.5 1 0
execute as @a[distance=..1] at @s run particle elder_guardian ~ ~ ~ 0 0 0 0 1 force @s

#
execute if score $is ui_temp matches 1.. run kill @s