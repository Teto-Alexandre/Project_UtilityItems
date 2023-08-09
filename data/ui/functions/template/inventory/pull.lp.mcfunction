data merge storage ui:common {input:{Num:0,Mode:"replace",Item:{id:"minecraft:cobblestone",Count:1b,tag:{}}}}
data modify storage ui:common input.Num set from storage ui:inventory temp[0].Slot
execute if score $pull_first ui_temp matches 1 run data modify storage ui:common input.Num set value 0
execute if score $pull_first ui_temp matches 2 run data modify storage ui:common input.Num set value 1
execute if score $pull_first ui_temp matches 1 run scoreboard players add $pull_first ui_temp 1
data modify storage ui:common input.Item.id set from storage ui:inventory temp[0].id
data modify storage ui:common input.Item.Count set from storage ui:inventory temp[0].Count
data modify storage ui:common input.Item.tag set from storage ui:inventory temp[0].tag
data modify storage ui:common input.Item.tag.tmw.gun.now.SubTime set value 0
data modify storage ui:common input.Item.tag.tmw.gun.now.SPTime set value 0

execute if score $phase game_state matches 1 if entity @s[tag=tmw_237_random] run function ui:template/inventory/random/1

execute store result score $limited ui_temp run data get storage ui:common input.Item.tag.tmw.gun.Limited
execute unless score $limited_weapon party_mode >= $limited ui_temp run data modify storage ui:common input.Item.id set value "minecraft:air"
execute unless score $limited_weapon party_mode >= $limited ui_temp run tellraw @s [{"text":"> ","color": "gray"},{"text":"現在の制限レベルでは許可されていない武器です","color": "red"}]
scoreboard players reset $limited ui_temp

function ui:common/item

data remove storage ui:inventory temp[0]

scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. run function ui:template/inventory/pull.lp