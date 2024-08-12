# 不死
scoreboard players operation @s ui_tmw272_undying -= $var_temp ui_temp
data merge storage ui:tmw272 {temp:{input:"undying"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"に"},{"score":{"name": "$var_temp","objective": "ui_temp"}},{"text": "ダメージ！"}]
execute if score @s ui_tmw272_undying matches 0.. run scoreboard players set $var_temp ui_temp 0
execute if score @s ui_tmw272_undying matches ..-1 run scoreboard players operation $var_temp ui_temp = @s ui_tmw272_undying
execute if score @s ui_tmw272_undying matches ..-1 run scoreboard players operation $var_temp ui_temp *= #-1 ui_num
execute if score @s ui_tmw272_undying matches ..-1 run scoreboard players set @s ui_tmw272_undying 0

execute at @s run playsound item.totem.use player @a ~ ~ ~ 1 1 0
execute at @s run particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.2 20 force
