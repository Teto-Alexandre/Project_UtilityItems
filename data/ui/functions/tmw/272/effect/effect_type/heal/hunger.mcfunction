# 空腹を回復で解除する
scoreboard players operation @s ui_tmw272_hunger -= $var_temp ui_temp
execute if score @s ui_tmw272_hunger matches ..0 run scoreboard players set @s ui_tmw272_hunger 0

execute if score @s ui_tmw272_hunger matches 1.. run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"【空腹】","color":"#aa6600"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_hunger"}},{"text": "になった！"}]
execute if score @s ui_tmw272_hunger matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が"},{"text":"【空腹】","color":"#aa6600"},{"text":"を解除した！"}]