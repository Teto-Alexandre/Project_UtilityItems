# モード変更
scoreboard players add $mode ui_temp 1
execute if score $mode ui_temp > $mode.max ui_temp run playsound item.spyglass.use player @a ~ ~ ~ 1 2 0
execute unless score $mode ui_temp > $mode.max ui_temp run playsound item.spyglass.use player @a ~ ~ ~ 1 1.5 0
execute if score $mode ui_temp > $mode.max ui_temp run scoreboard players set $mode ui_temp 1

scoreboard players set $changed ui_temp 1