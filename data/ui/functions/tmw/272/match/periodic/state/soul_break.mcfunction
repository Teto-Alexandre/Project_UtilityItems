scoreboard players set #soul_checker ui_temp 0
execute if score @s ui_tmw272_soul matches 1.. run scoreboard players set #soul_checker ui_temp 1
execute if score #soul_checker ui_temp matches 1 run scoreboard players operation @s ui_tmw272_soul_break -= @s ui_tmw272_soul
execute if score #soul_checker ui_temp matches 1 if score @s ui_tmw272_soul_break matches 0.. run scoreboard players set @s ui_tmw272_soul 0
execute if score #soul_checker ui_temp matches 1 if score @s ui_tmw272_soul_break matches ..-1 run scoreboard players set @s ui_tmw272_soul 0
execute if score #soul_checker ui_temp matches 1 if score @s ui_tmw272_soul_break matches ..-1 run scoreboard players operation @s ui_tmw272_soul -= @s ui_tmw272_soul_break
execute if score #soul_checker ui_temp matches 1 if score @s ui_tmw272_soul matches 1.. run scoreboard players set @s ui_tmw272_soul_break 0
execute if score #soul_checker ui_temp matches 1 if score @s ui_tmw272_soul matches 0 run data merge storage ui:tmw272 {temp:{input:"soul_break"}}
execute if score #soul_checker ui_temp matches 1 if score @s ui_tmw272_soul matches 1.. run data merge storage ui:tmw272 {temp:{input:"soul"}}
execute if score #soul_checker ui_temp matches 1 if score @s ui_tmw272_soul matches 1.. run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless entity @s[tag=tmw272_mute_value] run execute if score #soul_checker ui_temp matches 1 if score @s ui_tmw272_soul matches 1.. run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true},{"text": "が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "になった！"}]

scoreboard players operation #soul_break ui_temp = @s ui_tmw272_health_max
scoreboard players operation #soul_break ui_temp *= @s ui_tmw272_soul_break
scoreboard players operation #soul_break ui_temp /= #100 ui_num
scoreboard players operation @s ui_tmw272_health -= #soul_break ui_temp
particle soul ~ ~ ~ 0 0 0 0.1 15 force
playsound block.beacon.deactivate player @a ~ ~ ~ 1 2 0

data merge storage ui:tmw272 {temp:{input:"soul_break"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

execute unless entity @s[tag=tmw272_mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の体力が"},{"score":{"name": "#soul_break","objective": "ui_temp"}},{"text": "減少！"}]

scoreboard players reset #soul_break ui_temp
scoreboard players reset #soul_checker ui_temp
