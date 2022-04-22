#装填されてる弾を取り出す
    execute store result score $now_ammo ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now
    execute if score $now_ammo ui_temp matches 1.. run scoreboard players remove $now_ammo ui_temp 1
    summon item ~ ~ ~ {Tags:["tmw_r_potion"],Item:{id:"minecraft:stone",Count:1b},PickupDelay:1s}
    data modify entity @e[tag=tmw_r_potion,limit=1] Item set from entity @s SelectedItem.tag.tmw.slots.[0]
    kill @e[tag=tmw_r_potion,nbt={Item:{id:"minecraft:stone",Count:1b}}]
    tag @e[tag=tmw_r_potion] remove tmw_r_potion

# アイテム転置
    summon armor_stand ~ ~ ~ {Tags:["ui_temp"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{id:"stone",Count:1b},{},{},{}]}
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0] set from entity @s SelectedItem
    data remove entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.slots.[0]
    execute store result entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.gun.now int 1 run scoreboard players get $now_ammo ui_temp
    item replace entity @s weapon.mainhand from entity @e[tag=ui_temp,limit=1] armor.feet
    kill @e[tag=ui_temp]

#
    playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1.5 0