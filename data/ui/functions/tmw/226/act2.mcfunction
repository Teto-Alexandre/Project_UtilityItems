# 取り出し
    data modify storage ui:temp tag set from entity @s SelectedItem.tag

# 個数カウント
    execute store result score temp ui_temp run data get storage ui:temp tag.tmw.amount 1
    execute if score temp ui_temp matches 501.. run scoreboard players set temp ui_temp 500

# アイテム召喚.lp
    execute if score temp ui_temp matches 1.. run function ui:tmw/226/act2.lp
    execute as @e[tag=tmw_r_potion] run data modify entity @s Item set from storage ui:temp tag.tmw.slot

# 0個入ってるよ
    execute store result score temp ui_temp run data get storage ui:temp tag.tmw.amount 1
    scoreboard players remove temp ui_temp 500
    execute if score temp ui_temp matches ..-1 run scoreboard players set temp ui_temp 0
    execute store result storage ui:temp tag.tmw.amount int 1 run scoreboard players get temp ui_temp
    item modify entity @s weapon.mainhand ui:tempout
    function ui:tmw/226/calc
    item modify entity @s weapon.mainhand ui:tmw226
    execute if score temp ui_temp matches 0 run item modify entity @s weapon.mainhand ui:ubreak.set

# お片付け
    #kill @e[tag=tmw_r_potion,nbt={Item:{id:"minecraft:stripped_jungle_wood",Count:1b}}]
    tag @e[tag=tmw_r_potion] remove tmw_r_potion
    playsound minecraft:block.chest.open player @a ~ ~ ~ 0.8 0.6 0
    playsound minecraft:block.barrel.close player @a ~ ~ ~ 1 1 0
    playsound minecraft:block.barrel.close player @a ~ ~ ~ 1 1.5 0
