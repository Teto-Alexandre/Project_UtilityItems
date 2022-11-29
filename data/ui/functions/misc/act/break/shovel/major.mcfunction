#
    execute as @e[type=item,tag=ui_drop_dug] run function ui:misc/act/break/shovel/major/item

#
    scoreboard players set $tick.dig ui_world 0