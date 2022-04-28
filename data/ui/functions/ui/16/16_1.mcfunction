#==========================================================================================

# 上のスロットに流体が入ったのを検知する
    execute if block ~ ~ ~ water_cauldron run tag @s add ui_16_1_1
    execute if block ~ ~ ~ lava_cauldron run tag @s add ui_16_1_2
    execute if block ~ ~ ~ powder_snow_cauldron run tag @s add ui_16_1_3
    
# 下のスロットが空になったのを検知する
    execute if block ~ ~-1 ~ cauldron run tag @s add ui_16_1_4

# 内部データ変動
    execute as @s[tag=ui_16_1_1] run data modify entity @s ArmorItems.[3].tag.ui16.type set value 1
    execute as @s[tag=ui_16_1_2] run data modify entity @s ArmorItems.[3].tag.ui16.type set value 2
    execute as @s[tag=ui_16_1_3] run data modify entity @s ArmorItems.[3].tag.ui16.type set value 3
    execute as @s[tag=ui_16_1_1] run data modify entity @s ArmorItems.[3].tag.ui16.amount set value 1
    execute as @s[tag=ui_16_1_2] run data modify entity @s ArmorItems.[3].tag.ui16.amount set value 1
    execute as @s[tag=ui_16_1_3] run data modify entity @s ArmorItems.[3].tag.ui16.amount set value 1
    execute as @s[tag=ui_16_1_1] run setblock ~ ~ ~ cauldron
    execute as @s[tag=ui_16_1_2] run setblock ~ ~ ~ cauldron
    execute as @s[tag=ui_16_1_3] run setblock ~ ~ ~ cauldron

# 下のスロットの中身変更
    execute as @s[tag=ui_16_1_4,nbt={ArmorItems:[{},{},{},{tag:{ui16:{type:1,amount:1}}}]}] run setblock ~ ~-1 ~ water_cauldron[level=3] replace
    execute as @s[tag=ui_16_1_4,nbt={ArmorItems:[{},{},{},{tag:{ui16:{type:2,amount:1}}}]}] run setblock ~ ~-1 ~ lava_cauldron replace
    execute as @s[tag=ui_16_1_4,nbt={ArmorItems:[{},{},{},{tag:{ui16:{type:3,amount:1}}}]}] run setblock ~ ~-1 ~ powder_snow_cauldron[level=3] replace
    execute as @s[tag=ui_16_1_4] run data modify entity @s ArmorItems.[3].tag.ui16.type set value 0
    execute as @s[tag=ui_16_1_4] run data modify entity @s ArmorItems.[3].tag.ui16.amount set value 0

# タグ消し
    tag @s remove ui_16_1_1
    tag @s remove ui_16_1_2
    tag @s remove ui_16_1_3
    tag @s remove ui_16_1_4

# 土台が壊れたら破壊タグを付ける
    execute if block ~ ~ ~ air run tag @s add ui_break
    execute if block ~ ~-1 ~ air run tag @s add ui_break

#土台壊されたら破壊
    execute if entity @s[tag=ui_break] run particle block glass ~ ~ ~ 0.3 0.3 0.3 0 20 normal
    execute if entity @s[tag=ui_break] run fill ~ ~-1 ~ ~ ~ ~ air hollow
    execute if entity @s[tag=ui_break] run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:cauldron"}}]
    execute if entity @s[tag=ui_break] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stray_spawn_egg",Count:1b,tag:{tmw:{egg:16},CustomModelData:132003,display:{Name:'{"text":"流体タンク","color":"white","italic":false}',Lore:['[{"text":" 容量: 1000mB","color":"gray","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg","ui_16"]}}}}
    execute if entity @s[tag=ui_break] run kill @s

#=======================================================================================================