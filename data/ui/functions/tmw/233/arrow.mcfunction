# インベントリ内に矢があるなら
    execute store result score $success ui_temp run data get entity @s SelectedItem.tag.Charged

# ササッ、防具立てを介してお前のインベントリに素早く戻す
    execute if score $success ui_temp matches 0 run summon armor_stand ~ ~ ~ {Tags:["ui_temp"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{id:"stone",Count:1b},{},{},{}]}
    execute if score $success ui_temp matches 0 run data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0] set from entity @s SelectedItem
    execute if score $success ui_temp matches 0 run data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag merge value {Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}]}
    execute if score $success ui_temp matches 0 run item replace entity @s weapon.mainhand from entity @e[tag=ui_temp,limit=1] armor.feet
    execute if score $success ui_temp matches 0 run kill @e[tag=ui_temp]
    execute if score $success ui_temp matches 0 run playsound block.wooden_trapdoor.close player @a ~ ~ ~ 0.8 1.2 0
    execute if score $success ui_temp matches 0 run clear @s arrow{tmw:{id:233,temp:-1}} 1

# 失敗
    execute if score $success ui_temp matches 1 run give @s arrow 1
    execute if score $success ui_temp matches 1 run playsound block.note_block.snare player @a ~ ~ ~ 0.5 1.6 0
    execute if score $success ui_temp matches 1 run clear @s arrow{tmw:{id:233,temp:-1}} 1