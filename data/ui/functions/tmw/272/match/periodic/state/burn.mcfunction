execute if score @s ui_tmw272_fire_resistance matches 0 run scoreboard players operation @s ui_tmw272_health -= @s ui_tmw272_burn
execute if score @s ui_tmw272_fire_resistance matches 0 run particle block lava ~ ~2 ~ 0.4 0 0.4 0 30 force
execute if score @s ui_tmw272_fire_resistance matches 0 run playsound entity.player.hurt_on_fire player @a ~ ~ ~ 1 0.5 0
execute if score @s ui_tmw272_fire_resistance matches 1.. run particle dust 1 1 1 2 ~ ~1 ~ 0.6 0.6 0.6 0 15 force
execute if score @s ui_tmw272_fire_resistance matches 1.. run playsound block.lava.extinguish player @a ~ ~ ~ 1 0.5 0

data merge storage ui:tmw272 {temp:{input:"burn"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

execute unless entity @s[tag=mute_value] run execute if score @s ui_tmw272_fire_resistance matches 0 run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"に"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "ダメージ！"}]

scoreboard players operation @s ui_tmw272_burn *= #2 ui_num
scoreboard players operation @s ui_tmw272_burn /= #3 ui_num

execute unless entity @s[tag=mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "になった！"}]