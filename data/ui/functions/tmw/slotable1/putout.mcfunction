# 装填されてる弾を取り出す
    summon item ~ ~ ~ {Tags:["tmw_r_potion"],Item:{id:"minecraft:stone",Count:1b},PickupDelay:1s}
    data modify entity @e[tag=tmw_r_potion,limit=1] Item set from entity @s SelectedItem.tag.tmw.slot

# アイテム転置
    summon armor_stand ~ ~ ~ {Tags:["ui_temp"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{id:"stone",Count:1b},{},{},{}]}
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0] set from entity @s SelectedItem
    data remove entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.slot
    item replace entity @s weapon.mainhand from entity @e[tag=ui_temp,limit=1] armor.feet
    kill @e[tag=ui_temp]

#
    kill @e[tag=tmw_r_potion,nbt={Item:{id:"minecraft:stone",Count:1b}}]
    tag @e[tag=tmw_r_potion] remove tmw_r_potion

# 
    playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1.5 0