# 装填されてる弾を取り出す
summon item ~ ~ ~ {Tags:["tmw_r_potion"],Item:{id:"minecraft:stone",Count:1b},PickupDelay:1s}
data modify entity @e[tag=tmw_r_potion,limit=1] Item set from entity @s SelectedItem.tag.tmw.slots.[0]

# アイテム転置
data modify storage ui:temp tag set from entity @s SelectedItem.tag
data modify storage ui:temp tag.tmw.gun.now set value 0
data remove storage ui:temp tag.tmw.slots.[0]
item modify entity @s weapon.mainhand ui:tempout

# お片付け
kill @e[tag=tmw_r_potion,nbt={Item:{id:"minecraft:stone",Count:1b}}]
tag @e[tag=tmw_r_potion] remove tmw_r_potion

# 全部なくなるまで再帰
scoreboard players remove $temp ui_temp 1
execute if score $temp ui_temp matches 1.. run function ui:tmw/305/reload.lp