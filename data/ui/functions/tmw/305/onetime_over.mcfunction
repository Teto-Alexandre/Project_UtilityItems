# アイテム転置
    summon armor_stand ~ ~ ~ {Tags:["ui_temp"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{id:"stone",Count:1b},{},{},{}]}
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0] set from entity @s SelectedItem
    data remove entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.slots.[0]
    execute store result score $ammo ui_calc1 run data get entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.gun.now 1
    execute store result entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.gun.now int 1 run scoreboard players operation $ammo ui_calc1 -= #1 ui_num
    item replace entity @s weapon.mainhand from entity @e[tag=ui_temp,limit=1] armor.feet
    kill @e[tag=ui_temp]

# サウンド
    playsound minecraft:block.chain.break player @a ~ ~ ~ 1.2 1.2 0