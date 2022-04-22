# 発動
    execute if entity @e[tag=ui_temp,type=item,nbt={Item:{tag:{tmw:{id:1}}}}] run tellraw @s [{"color":"gray","text":"record"},{"color":"green","text":"> "},{"color":"white","text":"すみません！ 現在はアイテムのみの対応となっています！"}]
