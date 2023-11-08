# 鈍足によるドロー効果への妨害
scoreboard players operation $var_temp ui_temp -= @s ui_tmw272_slowness
execute if score $var_temp ui_temp matches ..0 run scoreboard players operation @s ui_tmw272_slowness = $var_temp ui_temp
execute if score $var_temp ui_temp matches ..0 run scoreboard players operation @s ui_tmw272_slowness *= #-1 ui_num
execute if score $var_temp ui_temp matches ..0 run scoreboard players set $var_temp ui_temp 0
execute if score $var_temp ui_temp matches 1.. run scoreboard players set @s ui_tmw272_slowness 0

execute if score $var_temp ui_temp matches ..0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"【鈍足】","color":"#00aaaa"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_slowness"}},{"text": "になった！"}]
execute if score $var_temp ui_temp matches 1.. run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が"},{"text":"【鈍足】","color":"#00aaaa"},{"text":"を解除した！"}]