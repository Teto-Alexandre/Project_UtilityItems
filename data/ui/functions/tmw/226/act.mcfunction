# 取り出し
    data modify storage ui:temp tag set from entity @s SelectedItem.tag

# 個数減らす
    execute store result score $temp ui_temp run data get storage ui:temp tag.tmw.amount 1
    execute store result storage ui:temp tag.tmw.amount int 1 run scoreboard players remove $temp ui_temp 1
    item modify entity @s weapon.mainhand ui:tempout
    function ui:tmw/226/calc
    item modify entity @s weapon.mainhand ui:tmw226
    execute if score $temp ui_temp matches 0 run item modify entity @s weapon.mainhand ui:ubreak.set

# アイテム召喚
    summon item ~ ~ ~ {Tags:["tmw_r_potion"],Item:{id:"minecraft:stripped_jungle_wood",Count:1b},PickupDelay:1s}
    data modify entity @e[tag=tmw_r_potion,limit=1] Item set from storage ui:temp tag.tmw.slot

# お片付け
    #kill @e[tag=tmw_r_potion,nbt={Item:{id:"minecraft:stripped_jungle_wood",Count:1b}}]
    tag @e[tag=tmw_r_potion] remove tmw_r_potion
    playsound minecraft:block.barrel.close player @a ~ ~ ~ 1 1 0
    playsound minecraft:block.barrel.close player @a ~ ~ ~ 1 1.5 0
