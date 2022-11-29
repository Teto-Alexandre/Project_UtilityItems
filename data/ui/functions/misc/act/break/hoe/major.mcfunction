#
    execute as @e[type=item,tag=ui_drop_harvd] run function ui:misc/act/break/hoe/major/item

#
    scoreboard players set $tick.harv ui_world 0