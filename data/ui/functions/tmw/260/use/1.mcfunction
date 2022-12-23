#
execute if score $mode ui_temp matches 1 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"高威力飛び道具ダメージ","color":"white"}]
execute if score $mode ui_temp matches 1 anchored eyes run summon arrow ^ ^ ^1 {pickup:2b,Tags:["ui_temp_obj"],damage:32767}
execute if score $mode ui_temp matches 1 anchored eyes positioned ^ ^ ^1 as @e[tag=ui_temp_obj] run function ui:template/accelerator/10

execute if score $mode ui_temp matches 2 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"半径10mに強制落下","color":"white"}]
execute if score $mode ui_temp matches 2 as @e[distance=..10] run data merge entity @s {FallDistance:2147483647}

execute if score $mode ui_temp matches 3 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"半径5mに即死","color":"white"}]
execute if score $mode ui_temp matches 3 positioned ^ ^ ^5 as @e[distance=..5] run data merge entity @s {Health:0f}