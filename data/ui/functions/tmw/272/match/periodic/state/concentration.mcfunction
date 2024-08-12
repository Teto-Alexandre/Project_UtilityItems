scoreboard players operation #concentration ui_temp = @s ui_tmw272_concentration
scoreboard players operation #concentration ui_temp /= #10 ui_num
scoreboard players operation @s ui_tmw272_strength += #concentration ui_temp
execute if score #concentration ui_temp matches 1 run particle electric_spark ~ ~1 ~ 0.4 0.4 0.4 1 30 force
execute if score #concentration ui_temp matches 1 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.5 0

scoreboard players operation #concentration ui_temp = @s ui_tmw272_strength

data merge storage ui:tmw272 {temp:{input:"concentration"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

execute unless entity @s[tag=tmw272_mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"【攻撃力】"},{"text":"が"},{"score":{"name": "#concentration","objective": "ui_temp"}},{"text": "になった！"}]

execute unless entity @s[tag=tmw272_mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]

scoreboard players reset #concentration ui_temp
