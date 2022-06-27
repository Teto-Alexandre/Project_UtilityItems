# 最大値確認
    execute store result score $max_ammo ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.max
    execute store result score $now_ammo ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.now
    scoreboard players operation $max_ammo ui_temp -= $now_ammo ui_temp

# 装填されてるカートリッジを取り出す
    execute if score $max_ammo ui_temp matches ..0 unless score $ammo ui_world matches 1 run summon item ~ ~ ~ {Tags:["tmw_r_potion"],Item:{id:"stone",Count:1b},PickupDelay:0s}
    execute if score $max_ammo ui_temp matches ..0 run data modify entity @e[tag=tmw_r_potion,limit=1] Item set from entity @s Inventory.[{Slot:-106b}].tag.tmw.slots.[0]
    execute if score $max_ammo ui_temp matches ..0 run scoreboard players remove $now_ammo ui_temp 1
    tag @e[tag=tmw_r_potion] remove tmw_r_potion

# アイテム転置
    summon armor_stand ~ ~ ~ {Tags:["ui_temp"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{id:"stone",Count:1b},{},{},{}]}
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0] set from entity @s Inventory.[{Slot:-106b}]
    execute if score $max_ammo ui_temp matches ..0 run data remove entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.slots.[0]
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.slots append from entity @s SelectedItem
    execute store result entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.tmw.gun.now int 1 run scoreboard players add $now_ammo ui_temp 1
    item replace entity @s weapon.offhand from entity @e[tag=ui_temp,limit=1] armor.feet
    execute unless score $ammo ui_world matches 1 run item replace entity @s weapon.mainhand with air
    kill @e[tag=ui_temp]

#
    playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1.5 0
    tag @s remove tmw_drop_n