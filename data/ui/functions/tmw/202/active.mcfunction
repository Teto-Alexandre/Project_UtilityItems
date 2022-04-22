#鉱石辞書（ネザー木材群はなんか違う気がするので登録しません）
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:oak_log"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_C_oak] at @s run function ui:tmw/202/cut/oak
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:spruce_log"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_spruce"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_C_spruce] at @s run function ui:tmw/202/cut/spruce
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:birch_log"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_birch"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_C_birch] at @s run function ui:tmw/202/cut/birch
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:jungle_log"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_jungle"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_C_jungle] at @s run function ui:tmw/202/cut/jungle
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_acacia"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_C_acacia] at @s run function ui:tmw/202/cut/acacia
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_dark_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_C_dark_oak] at @s run function ui:tmw/202/cut/dark_oak

#周囲にあるものを回収する
    teleport @e[type=item,distance=..20,nbt={Age:0s}] ~ ~ ~
    execute as @e[type=item,distance=..2,nbt={Age:0s}] run data merge entity @s {PickupDelay:0s}