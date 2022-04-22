#最大値確認
    execute store result score $max_ammo ui_temp run data get entity @s SelectedItem.tag.tmw.gun.max
    execute store result score $now_ammo ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now
    scoreboard players operation $max_ammo ui_temp -= $now_ammo ui_temp

#装填されてる弾を取り出す
    execute if score $max_ammo ui_temp matches ..0 run scoreboard players remove $now_ammo ui_temp 1
    execute if score $max_ammo ui_temp matches ..0 run summon item ~ ~ ~ {Tags:["tmw_r_potion"],Item:{id:"minecraft:stone",Count:1b},PickupDelay:1s}
    execute if score $max_ammo ui_temp matches ..0 run data modify entity @e[tag=tmw_r_potion,limit=1] Item set from entity @s SelectedItem.tag.tmw.slots.[0]
    kill @e[tag=tmw_r_potion,nbt={Item:{id:"minecraft:stone",Count:1b}}]
    tag @e[tag=tmw_r_potion] remove tmw_r_potion

#アイテム転置
    summon armor_stand ~ ~ ~ {Tags:["ui_temp"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{id:"stone",Count:1b},{},{},{}]}
    execute run data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0] set from entity @s SelectedItem
    execute if score $max_ammo ui_temp matches ..0 run data remove entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.slots.[0]
    execute run data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.slots append from entity @s Inventory.[{Slot:-106b}]
    execute store result entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.gun.now int 1 run scoreboard players add $now_ammo ui_temp 1
    item replace entity @s weapon.mainhand from entity @e[tag=ui_temp,limit=1] armor.feet
    item replace entity @s weapon.offhand with air
    kill @e[tag=ui_temp]

#
    playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1.5 0