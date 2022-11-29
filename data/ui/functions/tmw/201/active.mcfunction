# 鉱石辞書
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:coal"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_coal"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:coal_ore"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_coal"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_M_coal] at @s run function ui:tmw/201/mine/coal
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:raw_iron"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_iron"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:iron_ore"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_iron"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_M_iron] at @s run function ui:tmw/201/mine/iron
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:raw_gold"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_gold"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:gold_nugget"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_gold"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:gold_ore"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_gold"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:nether_gold_ore"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_gold"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_M_gold] at @s run function ui:tmw/201/mine/gold
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:diamond"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_diamond"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:diamond_ore"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_diamond"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_M_diamond] at @s run function ui:tmw/201/mine/diamond
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:redstone"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_redstone"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:redstone_ore"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_redstone"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_M_redstone] at @s run function ui:tmw/201/mine/redstone
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:lapis_lazuli"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_lapis"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:lapis_ore"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_lapis"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_M_lapis] at @s run function ui:tmw/201/mine/lapis
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:emerald"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_emerald"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:emerald_ore"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_emerald"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_M_emerald] at @s run function ui:tmw/201/mine/emerald
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:glowstone_dust"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_glowstone"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:glowstone"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_glowstone"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_M_glowstone] at @s run function ui:tmw/201/mine/glowstone
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:quartz"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_quartz"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:nether_quartz_ore"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_quartz"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_M_quartz] at @s run function ui:tmw/201/mine/quartz
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:raw_copper"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_copper"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:copper_ore"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_copper"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=armor_stand,tag=ui_M_copper] at @s run function ui:tmw/201/mine/copper

# ID共有
    scoreboard players operation $id ui_temp = @s ui_id

# 周囲にあるものを回収する
    teleport @e[type=item,distance=..20,nbt={Age:0s}] ~ ~ ~
    tag @e[type=item,distance=..1,nbt={Age:0s}] add ui_drop_mined
    scoreboard players operation @e[type=item,distance=..1,nbt={Age:0s}] ui_id = $id ui_temp
    teleport @e[type=experience_orb,distance=..20] ~ ~ ~
    execute as @e[type=item,distance=..2,nbt={Age:0s}] run data merge entity @s {PickupDelay:1s}