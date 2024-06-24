# 回復する

execute unless data storage ui:temp temp.effect.no_charge run data merge storage ui:tmw272 {temp:{input:"charge"}}
execute unless data storage ui:temp temp.effect.no_charge run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_charge run execute unless score @s ui_tmw272_charge matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute unless data storage ui:temp temp.effect.no_charge run scoreboard players operation $var ui_temp += @s ui_tmw272_charge
execute unless data storage ui:temp temp.effect.no_charge run scoreboard players set @s ui_tmw272_charge 0

# 癒し
execute unless data storage ui:temp temp.effect.no_healing run data merge storage ui:tmw272 {temp:{input:"healing"}}
execute unless data storage ui:temp temp.effect.no_healing run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_healing run execute if score @s ui_tmw272_healing matches 1.. run function ui:tmw/272/effect/effect_type/heal/healing

execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/heal/each
