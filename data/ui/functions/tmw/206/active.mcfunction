#鉱石辞書
    execute as @e[type=item,nbt={Age:0s},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~-0.5 ~0.5 ~-0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_H2"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~-0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_H2"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~1.5 ~0.5 ~-0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_H2"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~-0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_H2"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_H2","ui_H2_2"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~1.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_H2"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~-0.5 ~0.5 ~1.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_H2"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~1.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_H2"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~1.5 ~0.5 ~1.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_H2"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_H2_2] at @s run function ui:tmw/206/harv/farm
    execute as @e[type=armor_stand,tag=ui_H2] at @s run function ui:tmw/206/harv/main
    kill @e[type=armor_stand,tag=ui_H2]

#周囲にあるものを回収する
    teleport @e[type=item,distance=..20,nbt={Age:0s}] ~ ~ ~
    execute as @e[type=item,distance=..2,nbt={Age:0s}] run data merge entity @s {PickupDelay:0s}