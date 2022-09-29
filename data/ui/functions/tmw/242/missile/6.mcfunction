# 見た目
    scoreboard players operation $team ui_temp = @s ui_team
    execute if score $team ui_temp matches 1 run function ui:tmw/237/missile/1/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/missile/1/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/missile/1/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/missile/1/4