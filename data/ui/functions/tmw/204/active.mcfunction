#鉱石辞書
    execute as @e[type=item,nbt={Age:0s},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_H","ui_H_2"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute unless entity @e[type=armor_stand,tag=ui_H] at @s run function ui:tmw/204/harv/dirt
    execute as @e[type=armor_stand,tag=ui_H] at @s run function ui:tmw/204/harv/farm
    execute as @e[type=armor_stand,tag=ui_H] at @s run function ui:tmw/204/harv/main
    kill @e[type=armor_stand,tag=ui_H]

# ID共有
    scoreboard players operation $id ui_temp = @s ui_id

#周囲にあるものを回収する
    teleport @e[type=item,distance=..200,nbt={Age:0s}] ~ ~ ~
    tag @e[type=item,distance=..1,nbt={Age:0s}] add ui_drop_harvd
    scoreboard players operation @e[type=item,distance=..1,nbt={Age:0s}] ui_id = $id ui_temp
    execute as @e[type=item,distance=..2,nbt={Age:0s}] run data merge entity @s {PickupDelay:0s}