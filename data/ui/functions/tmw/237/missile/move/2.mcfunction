#見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/missile/move/2/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/missile/move/2/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/missile/move/2/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/missile/move/2/4

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/missile/kill
