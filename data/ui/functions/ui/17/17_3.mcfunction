# ヘルスが最大でないシュルカー各シュルカーにダメージを計上させる

# チームを共有
    #scoreboard players operation $team ui_temp = @s ui_team

# ダメージを受けたらチームと色を変更して回復する
    #execute if score $team ui_temp matches 1 run scoreboard players set @s ui_team 2
    #execute if score $team ui_temp matches 1 run data merge entity @s {Health:1000.0f,Color:6}
    #execute if score $team ui_temp matches 2 run scoreboard players set @s ui_team 1
    #execute if score $team ui_temp matches 2 run data merge entity @s {Health:1000.0f,Color:3}
    #execute unless score $team ui_temp matches 1..2 run data merge entity @s {Health:1000.0f}
    data merge entity @s {Health:1000.0f}