#鉱石辞書
    execute as @e[type=item,nbt={Age:0s},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_D"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_D] at @s run function ui:tmw/203/dig/5_5

# ID共有
    scoreboard players operation $id ui_temp = @s ui_id

#周囲にあるものを回収する
    teleport @e[type=item,distance=..20,nbt={Age:0s}] ~ ~ ~
    tag @e[type=item,distance=..1,nbt={Age:0s}] add ui_drop_dug
    scoreboard players operation @e[type=item,distance=..1,nbt={Age:0s}] ui_id = $id ui_temp
    execute as @e[type=item,distance=..2,nbt={Age:0s}] run data merge entity @s {PickupDelay:1s}