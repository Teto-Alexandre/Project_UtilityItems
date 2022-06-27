# アイテム転置
    summon armor_stand ~ ~ ~ {Tags:["ui_temp"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{id:"stone",Count:1b},{},{},{}]}
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0] set from entity @s Inventory.[{Slot:-106b}]
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.slot set from entity @s SelectedItem
    item replace entity @s weapon.offhand from entity @e[tag=ui_temp,limit=1] armor.feet
    execute unless score $ammo ui_world matches 1 run item replace entity @s weapon.mainhand with air
    kill @e[tag=ui_temp]

#
    playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1.5 0