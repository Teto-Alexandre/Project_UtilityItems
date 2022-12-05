#1tickに1回

#
#execute at @e[tag=tmw_250_1] run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force @s

execute at @s if score @s ui_use1 matches 1.. if score @s ui_ct matches 1.. run tellraw @s [{"text":"CoolTime: "},{"score":{"name":"@s","objective":"ui_ct"}}]
execute at @s if score @s ui_use1 matches 1.. unless score @s ui_ct matches 1.. run function ui:tmw/250/use/core
#execute at @e[tag=tmw_250_1] if score @s ui_trg matches 1.. run function ui:tmw/250/trigger/core