function oh_my_dat:please

execute unless data storage ui:cg1 temp.list[0].tag.tmw.cg.cost.amount run function ui:tmw/272/common/cost_redraw/create

execute if entity @s[type=player] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{}},Tags:["tmw272_temp_item","tmw272_dropitem_card"]}
execute if entity @s[type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.id set from storage ui:cg1 temp.list[0].id
execute if entity @s[type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag set from storage ui:cg1 temp.list[0].tag
execute if entity @s[type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.StackUUID set from entity @e[tag=tmw272_temp_item,limit=1] UUID
execute if entity @s[type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.IsCG1 set value 1
execute if entity @s[type=player] if data storage ui:cg1 temp.list[0].tag.tmw.cg{only_one:1} run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.IsCG1 set value 2

execute if entity @s[type=!player] if data storage ui:cg1 temp.list[0].tag.tmw{id:272} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand append from storage ui:cg1 temp.list[0]
execute if entity @s[type=!player] if data storage ui:cg1 temp.list[0].tag.tmw{id:272} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[-1].tag.IsCG1 set value 1
execute if entity @s[type=!player] if data storage ui:cg1 temp.list[0].tag.tmw.cg{only_one:1} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[-1].tag.IsCG1 set value 2

# アイテムオーナー
execute if entity @s[type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Owner set from entity @s UUID

# 引いた時の効果を AfterEffect に追加
execute unless data storage ui:temp temp.effect.no_draw_effect if data storage ui:cg1 temp.list[0].tag.tmw.cg.draw_effect.copy_display run data modify storage ui:cg1 temp.list[0].tag.tmw.cg.draw_effect.name set from storage ui:cg1 temp.list[0].tag.display.Name
execute unless data storage ui:temp temp.effect.no_draw_effect if data storage ui:cg1 temp.list[0].tag.tmw.cg.draw_effect.copy_display run data modify storage ui:cg1 temp.list[0].tag.tmw.cg.draw_effect.lore set from storage ui:cg1 temp.list[0].tag.display.Lore
execute unless data storage ui:temp temp.effect.no_draw_effect if data storage ui:cg1 temp.list[0].tag.tmw.cg.draw_effect run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage ui:cg1 temp.list[0].tag.tmw.cg.draw_effect

kill @e[tag=tmw272_temp_item,nbt=!{Item:{tag:{tmw:{id:272}}}}]
tag @e[tag=tmw272_temp_item] remove tmw272_temp_item

data modify storage ui:temp temp.display set from storage ui:cg1 temp.list[0].tag.display
scoreboard players set $broadcast_type ui_temp 7
function ui:tmw/272/effect/broadcast/
execute if score $cg1_common_draw_single ui_temp matches 0 run data remove storage ui:cg1 temp.list[0]

# カードプールがなくなったらボックスから補充を行う
execute store result score $cg1_list_count ui_temp run data get storage ui:cg1 temp.list
#execute if score $cg1_list_count ui_temp matches 0 run say エラー：特殊ボックスの内容が枯渇しました

scoreboard players remove $cg1_common_draw_num ui_temp 1
execute if score $cg1_common_draw_num ui_temp matches 1.. run function ui:tmw/272/common/create/0
