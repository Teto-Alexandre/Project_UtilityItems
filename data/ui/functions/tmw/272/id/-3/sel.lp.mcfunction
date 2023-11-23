execute store result score $mod_temp ui_temp run data get storage ui:temp temp.chest[0].Count
scoreboard players operation $mod ui_temp += $mod_temp ui_temp

data modify storage ui:temp temp.list append from storage ui:temp temp.chest[0]
execute unless data storage ui:temp temp.chest[0].tag.tmw.cg.only_one run data modify block ~ ~ ~ front_text.messages[0] set value '["",{"text":" "},{"storage":"ui:temp","nbt":"temp.chest[0].tag.display.Name","interpret": true},{"text":" × ","color":"gray","italic":false},{"score":{"name": "$mod_temp","objective": "ui_temp"},"color":"gray","italic":false}]'
execute if data storage ui:temp temp.chest[0].tag.tmw.cg.only_one run data modify block ~ ~ ~ front_text.messages[0] set value '["",{"text":" 唯一 ","color":"gold","italic":false},{"storage":"ui:temp","nbt":"temp.chest[0].tag.display.Name","interpret": true},{"text":" × ","color":"gray","italic":false},{"score":{"name": "$mod_temp","objective": "ui_temp"},"color":"gray","italic":false}]'
data modify entity @e[tag=ui_temp_item,limit=1] Item.tag.display.Lore append from block ~ ~ ~ front_text.messages[0]

data remove storage ui:temp temp.chest[0]
scoreboard players remove $loop ui_temp 1
execute if score $loop ui_temp matches 1.. run function ui:tmw/272/id/-3/sel.lp
