#

#
execute if score $is ui_temp matches 1..10 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute if score $is ui_temp matches 11.. run kill @s