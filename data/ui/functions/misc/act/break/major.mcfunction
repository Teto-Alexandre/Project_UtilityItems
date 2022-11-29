#
    execute if score $tick.mine ui_world matches 1 run function ui:misc/act/break/pickaxe/major
    execute if score $tick.cut ui_world matches 1 run function ui:misc/act/break/axe/major
    execute if score $tick.dig ui_world matches 1 run function ui:misc/act/break/shovel/major
    execute if score $tick.harv ui_world matches 1 run function ui:misc/act/break/hoe/major

#
    scoreboard players set $tick.break ui_world 0