# 投げるよ!
    tag @s add ui_temp_this
    tag @e[type=snowball,nbt={Item:{tag:{tmw:{id:262}}}},sort=nearest,limit=1] add ui_temp_snowball
    execute if entity @e[tag=ui_temp_snowball] run function ui:tmw/262/tick
    tag @e[tag=ui_temp_this] remove ui_temp_this
    tag @e[tag=ui_temp_snowball] remove ui_temp_snowball
