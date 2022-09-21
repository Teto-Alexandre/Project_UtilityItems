execute store result score $temp ui_temp run data get entity @s SelectedItemSlot
execute if score $temp ui_temp matches 0 run tellraw @a ["",{"text":"System","color":"white"},{"text":">> ","color":"red"},{"selector":"@s"},{"text":"が緊急自爆スイッチを実行しました","color":"gray"}]
execute if score $temp ui_temp matches 0 run kill @s
execute if score $temp ui_temp matches 1 run tag @s[tag=tmw_237_notitle] add ui_temp_this
execute if score $temp ui_temp matches 1 run tag @s[tag=!tmw_237_notitle] add tmw_237_notitle
execute if score $temp ui_temp matches 1 run tag @s[tag=ui_temp_this] remove tmw_237_notitle
execute if score $temp ui_temp matches 1 run tag @s[tag=ui_temp_this] remove ui_temp_this