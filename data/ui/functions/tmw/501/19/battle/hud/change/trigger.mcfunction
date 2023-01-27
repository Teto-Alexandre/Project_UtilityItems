# モードチェンジ
execute store result score $mode ui_temp run scoreboard players get @s ui_tmw501_19_now_hud
execute if score @s ui_tmw501_19_mct matches 1.. run scoreboard players set $mode ui_temp 0

# on
execute if score $mode ui_temp matches 1 run scoreboard players set @s ui_tmw501_19_now_hud 2
execute if score $mode ui_temp matches 1 run scoreboard players remove @s ui_tmw501_19_now_en 100
execute if score $mode ui_temp matches 1 run tellraw @s {"text":"HUD: ON"}

# off
execute if score $mode ui_temp matches 2 run scoreboard players set @s ui_tmw501_19_now_hud 1
execute if score $mode ui_temp matches 2 run title @s clear
execute if score $mode ui_temp matches 2 run tellraw @s {"text":"HUD: OFF"}