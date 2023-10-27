summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{}},Tags:["tmw272_temp_item"]}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward[0].Count set value 1
data modify entity @e[tag=tmw272_temp_item,limit=1] Item set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward[0]

scoreboard players set $broadcast_type ui_temp 4
function ui:tmw/272/effect/broadcast/
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward[0]

# アイテムオーナー
execute if entity @s[type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Owner set from entity @s UUID
execute if entity @e[tag=tmw272_temp_steal,type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Owner set from entity @e[tag=tmw272_temp_steal,type=player,limit=1] UUID

# アイテムのタグ削除
tag @e[tag=tmw272_temp_item] remove tmw272_temp_item

scoreboard players remove $cg1_common_draw_num ui_temp 1
execute if score $cg1_common_draw_num ui_temp matches 1.. run function ui:tmw/272/common/reward/0

#say b