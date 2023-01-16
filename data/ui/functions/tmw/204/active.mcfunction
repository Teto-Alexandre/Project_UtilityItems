#鉱石辞書
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:wheat_seeds"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["ui_H","ui_H_2","ui_H_2_0"]}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:carrot"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["ui_H","ui_H_2","ui_H_2_1"]}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:potato"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["ui_H","ui_H_2","ui_H_2_2"]}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:beetroot_seeds"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["ui_H","ui_H_2","ui_H_2_3"]}
    execute unless entity @e[tag=ui_H] at @s run function ui:tmw/204/harv/dirt
    execute as @e[tag=ui_H] at @s run function ui:tmw/204/harv/farm
    execute as @e[tag=ui_H_2_0] at @s run function ui:tmw/204/harv/wheat
    execute as @e[tag=ui_H_2_1] at @s run function ui:tmw/204/harv/carrot
    execute as @e[tag=ui_H_2_2] at @s run function ui:tmw/204/harv/potato
    execute as @e[tag=ui_H_2_3] at @s run function ui:tmw/204/harv/beetroot
    kill @e[tag=ui_H]

# ID共有
    scoreboard players operation $id ui_temp = @s ui_id

#周囲にあるものを回収する
    teleport @e[type=item,distance=..200,nbt={Age:0s}] ~ ~ ~
    tag @e[type=item,distance=..1,nbt={Age:0s}] add ui_drop_harvd
    scoreboard players operation @e[type=item,distance=..1,nbt={Age:0s}] ui_id = $id ui_temp
    execute as @e[type=item,distance=..2,nbt={Age:0s}] run data merge entity @s {PickupDelay:0s}