# これです
    tag @s add ui_temp_this
# 座標ずらし
    scoreboard players operation $temp ui_temp = @s ui_is
    scoreboard players operation $temp ui_temp %= #30 ui_num
    execute if score $temp ui_temp matches 0 run summon marker ^0.000 ^1.000 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 1 run summon marker ^0.208 ^0.978 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 2 run summon marker ^0.407 ^0.914 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 3 run summon marker ^0.588 ^0.809 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 4 run summon marker ^0.743 ^0.669 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 5 run summon marker ^0.866 ^0.500 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 6 run summon marker ^0.951 ^0.309 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 7 run summon marker ^0.995 ^0.105 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 8 run summon marker ^0.995 ^-0.104 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 9 run summon marker ^0.951 ^-0.309 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 10 run summon marker ^0.866 ^-0.500 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 11 run summon marker ^0.743 ^-0.669 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 12 run summon marker ^0.588 ^-0.809 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 13 run summon marker ^0.407 ^-0.914 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 14 run summon marker ^0.208 ^-0.978 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 15 run summon marker ^0.000 ^-1.000 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 16 run summon marker ^-0.208 ^-0.978 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 17 run summon marker ^-0.407 ^-0.914 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 18 run summon marker ^-0.588 ^-0.809 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 19 run summon marker ^-0.743 ^-0.669 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 20 run summon marker ^-0.866 ^-0.500 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 21 run summon marker ^-0.951 ^-0.309 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 22 run summon marker ^-0.995 ^-0.105 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 23 run summon marker ^-0.995 ^0.104 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 24 run summon marker ^-0.951 ^0.309 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 25 run summon marker ^-0.866 ^0.500 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 26 run summon marker ^-0.743 ^0.669 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 27 run summon marker ^-0.588 ^0.809 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 28 run summon marker ^-0.407 ^0.913 ^ {Tags:["ui_temp_marker"]}
    execute if score $temp ui_temp matches 29 run summon marker ^-0.208 ^0.978 ^ {Tags:["ui_temp_marker"]}
# 当たり判定拡張
    execute at @e[tag=ui_temp_marker] positioned ~-0.5 ~-0.15 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit
# 見た目
    execute if score $team ui_temp matches 1 at @e[tag=ui_temp_marker] run function ui:tmw/237/projectile/move/105/1
    execute if score $team ui_temp matches 2 at @e[tag=ui_temp_marker] run function ui:tmw/237/projectile/move/105/2
    execute if score $team ui_temp matches 3 at @e[tag=ui_temp_marker] run function ui:tmw/237/projectile/move/105/3
    execute if score $team ui_temp matches 4 at @e[tag=ui_temp_marker] run function ui:tmw/237/projectile/move/105/4
# 時間カウント
    scoreboard players add @s ui_is 1
# 壁接触時
    execute at @e[tag=ui_temp_marker] unless block ~ ~ ~ #ui:nocol run tag @s add tmw_237_proj_del
    execute at @e[tag=ui_temp_marker] if block ~ ~ ~ #ui:liq run tag @s add tmw_237_proj_del
# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
#
    tag @s remove ui_temp_this
    kill @e[tag=ui_temp_marker]