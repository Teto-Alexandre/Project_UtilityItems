#
    execute as @e[type=item,tag=ui_drop_mined] run function ui:misc/act/break/pickaxe/major/item

#
    scoreboard players set $tick.mine ui_world 0