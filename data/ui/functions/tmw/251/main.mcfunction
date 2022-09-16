#1tickに1回

#
execute at @e[tag=tmw_251_1] run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force @s

execute at @s if score @s ui_use1 matches 1.. run function ui:tmw/251/use/core
execute at @e[tag=tmw_251_1] if score @s ui_trg matches 1.. run function ui:tmw/251/trigger/core