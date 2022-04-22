# アイテム召喚.lp
    summon item ~ ~ ~ {Tags:["tmw_r_potion"],Item:{id:"minecraft:stripped_jungle_wood",Count:1b},PickupDelay:1s}

# 再帰
    scoreboard players remove temp ui_temp 1
    execute if score temp ui_temp matches 1.. run function ui:tmw/226/act2.lp