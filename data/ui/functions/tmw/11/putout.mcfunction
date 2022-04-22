#=======================================================================================================

# 装填されてる弾を取り出す
    scoreboard players set $temp ui_temp 0
    execute if entity @s[nbt={SelectedItem:{tag:{tmw_PCharge:1b}}}] run scoreboard players set $temp ui_temp 1
    execute if score $temp ui_temp matches 1 run summon item ~ ~ ~ {Tags:["tmw_r_potion"],Item:{id:"stone",Count:1b},PickupDelay:0s}
    execute if score $temp ui_temp matches 1 run data modify entity @e[tag=tmw_r_potion,limit=1] Item set from entity @s SelectedItem.tag.tmw.potion

# アイテム転置
    summon armor_stand ~ ~ ~ {Tags:["ui_temp"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{id:"stone",Count:1b},{},{},{}]}
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0] set from entity @s SelectedItem
    data remove entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.potion
    data remove entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.ChargedProjectiles
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw_PCharge set value 0b
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.Charged set value 0b
    item replace entity @s weapon.mainhand from entity @e[tag=ui_temp,limit=1] armor.feet
    kill @e[tag=ui_temp]
    
# タグ消し
    tag @e[tag=tmw_r_potion] remove tmw_r_potion

#
    playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1.5 0

#=======================================================================================================
