#=======================================================================================================

# 装填されてる弾を矢と置き換える
    summon potion ~ ~1.5 ~ {Tags:["tmw_11_1","tmw_11_2"],Motion:[0.0d,0.0d,0.0d]}
    execute at @s as @e[tag=tmw_11_1] run data modify entity @s Motion set from entity @e[type=arrow,tag=!ui_powered,limit=1,sort=nearest] Motion
    execute at @s run data modify entity @e[tag=tmw_11_1,limit=1] Item set from entity @s SelectedItem.tag.tmw.potion
    kill @e[type=arrow,tag=!ui_powered,limit=1,sort=nearest]
    tag @e[tag=tmw_11_1] remove tmw_11_1

# アイテム転置
    summon armor_stand ~ ~ ~ {Tags:["ui_temp"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{id:"stone",Count:1b},{},{},{}]}
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0] set from entity @s SelectedItem
    execute unless entity @s[nbt={SelectedItem:{tag:{tmw:{type:2}}}}] run data remove entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.potion
    execute unless entity @s[nbt={SelectedItem:{tag:{tmw:{type:2}}}}] run data remove entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.ChargedProjectiles
    execute unless entity @s[nbt={SelectedItem:{tag:{tmw:{type:2}}}}] run data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw_PCharge set value 0b
    execute unless entity @s[nbt={SelectedItem:{tag:{tmw:{type:2}}}}] run data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.Charged set value 0b
    execute if entity @s[nbt={SelectedItem:{tag:{tmw:{type:2}}}}] run data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw_PCharge set value 1b
    execute if entity @s[nbt={SelectedItem:{tag:{tmw:{type:2}}}}] run data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.Charged set value 1b
    execute if entity @s[nbt={SelectedItem:{tag:{tmw:{type:2}}}}] run data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.ChargedProjectiles set value [{id:"minecraft:stone",Count:1b}]
    execute if entity @s[nbt={SelectedItem:{tag:{tmw:{type:2}}}}] run data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.ChargedProjectiles.[0] set from entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.potion
    item replace entity @s weapon.mainhand from entity @e[tag=ui_temp,limit=1] armor.feet
    kill @e[tag=ui_temp]

#
    playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 1 1.5 0
    #scoreboard players set @s ui_usec 0

#=======================================================================================================