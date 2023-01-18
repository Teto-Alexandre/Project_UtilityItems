# モードチェンジ
execute store result score $mode ui_temp run scoreboard players get @s ui_tmw501_19_now_camera
execute if score @s ui_tmw501_19_mct matches 1.. run scoreboard players set $mode ui_temp 0

# on
execute if score $mode ui_temp matches 1 run scoreboard players set @s ui_tmw501_19_now_camera 2
execute if score $mode ui_temp matches 1 run tellraw @s {"text":"カメラ: ON"}

# off
execute if score $mode ui_temp matches 2 run scoreboard players set @s ui_tmw501_19_now_camera 1
execute if score $mode ui_temp matches 2 run tellraw @s {"text":"カメラ: OFF"}