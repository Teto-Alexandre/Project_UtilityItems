#鉱石辞書
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:stone"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_stone"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:cobblestone"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_stone"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute if entity @s[nbt=!{SelectedItem:{tag:{tmw:{type:1}}}}] as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:deepslate"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_stone"],NoGravity:1b,Marker:1b,Invisible:1b}
    execute if entity @s[nbt=!{SelectedItem:{tag:{tmw:{type:1}}}}] as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:cobbled_deepslate"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_stone"],NoGravity:1b,Marker:1b,Invisible:1b}

    execute if entity @s[nbt={SelectedItem:{tag:{tmw:{type:1}}}}] as @e[type=armor_stand,tag=ui_M_stone] at @s run function ui:tmw/219/mine/stone1
    execute if entity @s[nbt={SelectedItem:{tag:{tmw:{type:2}}}}] as @e[type=armor_stand,tag=ui_M_stone] at @s run function ui:tmw/219/mine/stone2
    execute if entity @s[nbt={SelectedItem:{tag:{tmw:{type:3}}}}] as @e[type=armor_stand,tag=ui_M_stone] at @s run function ui:tmw/219/mine/stone3