#=======================================================================================================

# 装填されてる弾を取り出す
    #tag @e[type=item,distance=..3,nbt={Age:0s}] add tmw_r_drop
    #tag @e[tag=tmw_r_drop,nbt={Item:{tag:{tmw:{potion:{id:"minecraft:potion"}}}}}] add tmw_r_am
    #tag @e[tag=tmw_r_drop,nbt={Item:{tag:{tmw:{potion:{id:"minecraft:splash_potion"}}}}}] add tmw_r_am
    #tag @e[tag=tmw_r_drop,nbt={Item:{tag:{tmw:{potion:{id:"minecraft:lingering_potion"}}}}}] add tmw_r_am
    scoreboard players set $temp ui_temp 0
    execute if entity @s[nbt={SelectedItem:{tag:{tmw_PCharge:1b}}}] run scoreboard players set $temp ui_temp 1
    execute if score $temp ui_temp matches 1 run summon item ~ ~ ~ {Tags:["tmw_r_potion"],Item:{id:"stone",Count:1b},PickupDelay:0s}
    execute if score $temp ui_temp matches 1 run data modify entity @e[tag=tmw_r_potion,limit=1] Item set from entity @s SelectedItem.tag.tmw.potion

# アイテム転置
    summon armor_stand ~ ~ ~ {Tags:["ui_temp"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{id:"stone",Count:1b},{},{},{}]}
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0] set from entity @s SelectedItem
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.potion set from entity @s Inventory.[{Slot:-106b}]
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw_PCharge set value 1b
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.Charged set value 1b
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.ChargedProjectiles set value [{id:"minecraft:stone",Count:1b}]
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.ChargedProjectiles.[0] set from entity @s Inventory.[{Slot:-106b}]
    item replace entity @s weapon.mainhand from entity @e[tag=ui_temp,limit=1] armor.feet
    item replace entity @s weapon.offhand with air
    kill @e[tag=ui_temp]
    
# タグ消し
    tag @e[tag=tmw_r_potion] remove tmw_r_potion

#
    playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1.5 0

#=======================================================================================================
