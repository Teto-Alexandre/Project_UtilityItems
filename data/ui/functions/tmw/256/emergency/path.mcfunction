execute store result score $temp ui_temp run data get entity @s SelectedItemSlot
execute if score $temp ui_temp matches 0 run tellraw @a ["",{"text":"System","color":"white"},{"text":">> ","color":"red"},{"selector":"@s"},{"text":"が緊急自爆スイッチを実行しました","color":"gray"}]
execute if score $temp ui_temp matches 0 run kill @s
execute if score $temp ui_temp matches 1 run tag @s[tag=tmw_256_notitle] add ui_temp_this
execute if score $temp ui_temp matches 1 run tag @s[tag=!tmw_256_notitle] add tmw_256_notitle
execute if score $temp ui_temp matches 1 run tag @s[tag=ui_temp_this] remove tmw_256_notitle
execute if score $temp ui_temp matches 1 run tag @s[tag=ui_temp_this] remove ui_temp_this
execute if score $temp ui_temp matches 2 run tag @s[tag=tmw_256_nolaser] add ui_temp_this
execute if score $temp ui_temp matches 2 run tag @s[tag=!tmw_256_nolaser] add tmw_256_nolaser
execute if score $temp ui_temp matches 2 run tag @s[tag=ui_temp_this] remove tmw_256_nolaser
execute if score $temp ui_temp matches 2 run tag @s[tag=ui_temp_this] remove ui_temp_this