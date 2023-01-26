# モードチェンジ
execute store result score $mode ui_temp run scoreboard players get @s ui_tmw501_19_now_mode
execute if score @s ui_tmw501_19_mct matches 1.. run scoreboard players set $mode ui_temp 0

# コンバットからスキャン
execute if score $mode ui_temp matches 1 run scoreboard players set @s ui_tmw501_19_mct 1
#execute if score $mode ui_temp matches 1 run scoreboard players set @s[tag=tmw_501_19_quick_mode_change_1] ui_tmw501_19_mct 18
#execute if score $mode ui_temp matches 1 run scoreboard players set @s[tag=tmw_501_19_quick_mode_change_2] ui_tmw501_19_mct 12
#execute if score $mode ui_temp matches 1 run scoreboard players set @s[tag=tmw_501_19_quick_mode_change_3] ui_tmw501_19_mct 7
execute if score $mode ui_temp matches 1 run scoreboard players set @s ui_tmw501_19_now_mode 2

# スキャンからコンバット
execute if score $mode ui_temp matches 2 run scoreboard players set @s ui_tmw501_19_mct 1
#execute if score $mode ui_temp matches 2 run scoreboard players set @s[tag=tmw_501_19_quick_mode_change_1] ui_tmw501_19_mct 18
#execute if score $mode ui_temp matches 2 run scoreboard players set @s[tag=tmw_501_19_quick_mode_change_2] ui_tmw501_19_mct 12
#execute if score $mode ui_temp matches 2 run scoreboard players set @s[tag=tmw_501_19_quick_mode_change_3] ui_tmw501_19_mct 7
execute if score $mode ui_temp matches 2 run scoreboard players set @s ui_tmw501_19_now_mode 1