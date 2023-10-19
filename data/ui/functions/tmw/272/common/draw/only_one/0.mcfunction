execute if entity @s[type=player] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{}},Tags:["tmw272_temp_item","tmw272_dropitem_card"]}
execute if entity @s[type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list[0]
execute if entity @s[type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.StackUUID set from entity @e[tag=tmw272_temp_item,limit=1] UUID
execute if entity @s[type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.IsCG1 set value 2

data modify storage ui:temp temp.draw_card set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list[0]

execute if entity @s[type=!player] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand append from storage ui:temp temp.draw_card

# 引いた時の効果を AfterEffect に追加
#execute as @e[tag=tmw272_temp_steal] run function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage ui:temp temp.draw_card.tag.tmw.cg.oo_draw_effect
#execute if entity @e[tag=tmw272_temp_steal] run function oh_my_dat:please

# アイテムのタグ削除
kill @e[tag=tmw272_temp_item,nbt=!{Item:{tag:{tmw:{id:272}}}}]
tag @e[tag=tmw272_temp_item] remove tmw272_temp_item

#tellraw @a[tag=ui_temp_players] ["",{"text":"【唯一】","color":"gold"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"> "},{"text":"["},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list[0]"},{"text": "]"}]
scoreboard players set $broadcast_type ui_temp 3
function ui:tmw/272/effect/broadcast/