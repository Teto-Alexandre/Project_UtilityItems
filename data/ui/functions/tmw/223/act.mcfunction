# 発動
    tag @e[type=!player,sort=nearest,limit=1] add ui_temp

    tellraw @s [{"color":"gray","text":"record"},{"color":"green","text":"> "},{"color":"white","text":"すみません！ まだデータが入力されていないようです！"}]

    #execute if entity @e[tag=ui_temp,type=item,nbt={Item:{tag:{tmw:{}}}}] run function ui:tmw/223/item

    #execute unless entity @e[tag=ui_temp,type=item,nbt={Item:{tag:{tmw:{}}}}] run tellraw @s [{"color":"gray","text":"record"},{"color":"green","text":"> "},{"color":"white","text":"すみません！ 現在はアイテムのみの対応となっています！"}]

    tag @e remove ui_temp

    playsound block.note_block.snare player @a ~ ~ ~ 1 0.8