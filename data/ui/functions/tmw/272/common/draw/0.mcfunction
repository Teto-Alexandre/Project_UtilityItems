execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[0].tag.tmw.cg{only_one:1} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[0] set value {}

execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[0].tag.tmw.cg.cost.amount run function ui:tmw/272/common/cost_redraw/draw

execute if entity @s[type=player] unless entity @e[tag=tmw272_temp_steal,type=!player] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{}},Tags:["tmw272_temp_item","tmw272_dropitem_card"]}
execute if entity @s[type=player] unless entity @e[tag=tmw272_temp_steal,type=!player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[0]
execute if entity @s[type=player] unless entity @e[tag=tmw272_temp_steal,type=!player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.StackUUID set from entity @e[tag=tmw272_temp_item,limit=1] UUID
execute if entity @s[type=player] unless entity @e[tag=tmw272_temp_steal,type=!player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.IsCG1 set value 1

data modify storage ui:temp temp.draw_card set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[0]

execute if entity @s[type=!player] if entity @e[tag=tmw272_temp_steal,type=player] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{}},Tags:["tmw272_temp_item","tmw272_dropitem_card"]}
execute if entity @s[type=!player] if entity @e[tag=tmw272_temp_steal,type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[0]
execute if entity @s[type=!player] if entity @e[tag=tmw272_temp_steal,type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.StackUUID set from entity @e[tag=tmw272_temp_item,limit=1] UUID
execute if entity @s[type=!player] if entity @e[tag=tmw272_temp_steal,type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.IsCG1 set value 1

data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[0]

# アイテムオーナー
execute if entity @s[type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Owner set from entity @s UUID
execute if entity @e[tag=tmw272_temp_steal,type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Owner set from entity @e[tag=tmw272_temp_steal,type=player,limit=1] UUID

# 盗む？
execute if entity @e[tag=tmw272_temp_steal,type=player] as @e[tag=tmw272_temp_steal] run tp @e[tag=tmw272_temp_item] @s
execute if entity @e[tag=tmw272_temp_steal,type=!player] as @e[tag=tmw272_temp_steal] run function oh_my_dat:please
execute if entity @e[tag=tmw272_temp_steal,type=!player] if data storage ui:temp temp.draw_card.tag.tmw{id:272} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand append from storage ui:temp temp.draw_card
execute if entity @e[tag=tmw272_temp_steal,type=!player] if data storage ui:temp temp.draw_card.tag.tmw{id:272} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[-1].tag.IsCG1 set value 1
execute if entity @e[tag=tmw272_temp_steal,type=!player] run function oh_my_dat:please
execute unless entity @e[tag=tmw272_temp_steal] if entity @s[type=!player] if data storage ui:temp temp.draw_card.tag.tmw{id:272} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand append from storage ui:temp temp.draw_card
execute unless entity @e[tag=tmw272_temp_steal] if entity @s[type=!player] if data storage ui:temp temp.draw_card.tag.tmw{id:272} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[-1].tag.IsCG1 set value 1

# 引いた時の効果を AfterEffect に追加
execute as @e[tag=tmw272_temp_steal] run function oh_my_dat:please
execute unless data storage ui:temp temp.effect.no_draw_effect if data storage ui:temp temp.draw_card.tag.tmw.cg.draw_effect.copy_display run data modify storage ui:temp temp.draw_card.tag.tmw.cg.draw_effect.name set from storage ui:temp temp.draw_card.tag.display.Name
execute unless data storage ui:temp temp.effect.no_draw_effect if data storage ui:temp temp.draw_card.tag.tmw.cg.draw_effect.copy_display run data modify storage ui:temp temp.draw_card.tag.tmw.cg.draw_effect.lore set from storage ui:temp temp.draw_card.tag.display.Lore
execute unless data storage ui:temp temp.effect.no_draw_effect if data storage ui:temp temp.draw_card.tag.tmw.cg.draw_effect run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage ui:temp temp.draw_card.tag.tmw.cg.draw_effect
execute if entity @e[tag=tmw272_temp_steal] run function oh_my_dat:please

#
execute if data storage ui:temp temp.effect.add_list run data modify storage ui:temp card.list append from storage ui:temp temp.draw_card

# アイテムのタグ削除
kill @e[tag=tmw272_temp_item,nbt=!{Item:{tag:{tmw:{id:272}}}}]
tag @e[tag=tmw272_temp_item] remove tmw272_temp_item

# カードプールがなくなったらボックスから補充を行う
execute store result score $cg1_list_count ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match
execute unless score $cg1_list_count ui_temp matches 1.. run function ui:tmw/272/common/list_match/copy
execute unless score $cg1_list_count ui_temp matches 1.. run function ui:tmw/272/common/shuffle/

scoreboard players remove $cg1_common_draw_num ui_temp 1
execute if score $cg1_common_draw_num ui_temp matches 1.. run function ui:tmw/272/common/draw/0

execute unless data storage ui:temp temp.effect.no_draw_count run scoreboard players add @s ui_tmw272_draw 1
#scoreboard players add @s ui_tmw272_draw 1
