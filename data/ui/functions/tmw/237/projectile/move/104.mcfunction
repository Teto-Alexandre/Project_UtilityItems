#これです
    tag @s add ui_temp_this
#当たり判定拡張
    execute positioned ~ ~-0.9 ~ as @e[distance=..1.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit
# 見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/104/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/104/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/104/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/104/4
# 時間カウント
    scoreboard players add @s ui_is 5
    execute if score @s ui_is matches ..100 run scoreboard players set @s ui_hpart 4
    execute if score @s ui_is matches 101..150 run scoreboard players set @s ui_hpart 5
    execute if score @s ui_is matches 151..200 run scoreboard players set @s ui_hpart 6
    execute if score @s ui_is matches 201..250 run scoreboard players set @s ui_hpart 7
    execute if score @s ui_is matches 251..300 run scoreboard players set @s ui_hpart 8
    execute if score @s ui_is matches 301..350 run scoreboard players set @s ui_hpart 9
    execute if score @s ui_is matches 351..400 run scoreboard players set @s ui_hpart 10
# 壁接触時
    execute unless block ~ ~-0.7 ~ #ui:nocol run teleport @s ~ ~ ~ ~ -30
    execute unless block ~ ~-0.7 ~ #ui:nocol run scoreboard players set @s ui_bcp -10
# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
    execute if score @s ui_is matches 400.. run function ui:tmw/237/projectile/kill
#
    tag @s remove ui_temp_this