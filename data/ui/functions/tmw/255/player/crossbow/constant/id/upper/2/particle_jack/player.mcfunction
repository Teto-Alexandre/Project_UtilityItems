scoreboard players set $mod ui_calc1 3
function ui:common/rand
scoreboard players operation $temp ui_temp = $rand ui_calc1

execute if score $temp ui_temp matches 1.. at @s anchored eyes run particle minecraft:block_marker air ^ ^ ^0.1 0 0 0 0 1 force
execute if score $temp ui_temp matches 1.. at @s anchored eyes run particle minecraft:block_marker air ^ ^ ^-3.8 0 0 0 0 1 force
execute if score $temp ui_temp matches 1.. at @s anchored eyes run particle minecraft:block_marker air ^ ^ ^3.8 0 0 0 0 1 force

execute if score $temp ui_temp matches 0 run particle block_marker air ~ ~ ~ 3 3 3 0 50
execute if score $temp ui_temp matches 1 run particle block_marker air ~ ~ ~ 4 4 4 0 200
execute if score $temp ui_temp matches 2 run particle block_marker air ~ ~ ~ 4 4 4 0 300
