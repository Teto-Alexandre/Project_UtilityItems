# 周囲の鉄ブロックに防具立てを配置する

#
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id
    scoreboard players operation $linkby ui_temp = @s ui_is
    scoreboard players set $move ui_temp 0

#
    execute if block ~ ~ ~ soul_sand store success score $move ui_temp run teleport @s ~ ~1 ~
    execute if block ~ ~ ~ magma_block store success score $move ui_temp run teleport @s ~ ~-1 ~

#
    execute if block ~ ~ ~ stone positioned ~ ~0.5 ~ run function ui:tmw/259/root/stone
    execute if block ~ ~ ~ dropper positioned ~ ~0.5 ~ run function ui:tmw/259/root/dropper/main
    execute if block ~ ~ ~ air run kill @s

#
    execute if score $move ui_temp matches 0 run teleport @s ^ ^ ^1
