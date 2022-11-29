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
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:crimson_stem"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_crimson"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_C_crimson] at @s run function ui:tmw/202/cut/crimson
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:warped_stem"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_warp"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_C_warp] at @s run function ui:tmw/202/cut/warp
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:mangrove_log"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_mangrove"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_C_mangrove] at @s run function ui:tmw/202/cut/mangrove

# ID共有
    scoreboard players operation $id ui_temp = @s ui_id

#周囲にあるものを回収する
    teleport @e[type=item,distance=..20,nbt={Age:0s}] ~ ~ ~
    tag @e[type=item,distance=..1,nbt={Age:0s}] add ui_drop_cutted
    scoreboard players operation @e[type=item,distance=..1,nbt={Age:0s}] ui_id = $id ui_temp
    execute as @e[type=item,distance=..2,nbt={Age:0s}] run data merge entity @s {PickupDelay:1s}