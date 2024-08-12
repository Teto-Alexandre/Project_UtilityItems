data merge storage ui:tmw272 {temp:{input:"drowsy"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless score @s ui_tmw272_drowsy matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute unless score @s ui_tmw272_drowsy matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"は目を覚ました！"}]
scoreboard players operation $var_temp ui_temp += @s ui_tmw272_drowsy
scoreboard players operation $var_temp ui_temp > #0 ui_num

scoreboard players set @s ui_tmw272_drowsy 0