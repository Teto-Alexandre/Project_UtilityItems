# 見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/107/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/107/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/107/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/107/4

#
    scoreboard players add @s ui_is 1
    scoreboard players operation $temp ui_temp = @s ui_is
    execute as @a if score @s ui_id = $id ui_temp run tag @s add ui_temp_player
    execute at @s facing entity @a[tag=ui_temp_player] eyes run function ui:tmw/237/projectile/move/107/homing
    execute if score @s ui_is matches 10.. at @s facing entity @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] eyes run teleport @s ^ ^-0.02 ^0.15
    execute if score @s ui_is matches 5.. positioned ~ ~-1 ~ if entity @a[tag=ui_temp_player,distance=..1] run function ui:tmw/237/projectile/move/107/regain
    tag @a[tag=ui_temp_player] remove ui_temp_player

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
