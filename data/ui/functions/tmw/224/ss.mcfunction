# 見た目
    execute as @e[tag=ui_224_1,tag=!ui_224_2] at @s run particle flame ~ ~0.4 ~ 0 0 0 0.02 1
    execute as @e[tag=ui_224_1,tag=ui_224_2] at @s run particle soul_fire_flame ~ ~0.4 ~ 0 0 0 0.02 1
# 松明設置、Motion検知入れようかと迷ったけど狭い通路で全弾当てるのは私の意図じゃないので除外
    execute as @e[tag=ui_224_1] at @s unless block ~ ~-0.1 ~ #ui:nocol run setblock ~ ~ ~ torch destroy
    execute as @e[tag=ui_224_1] at @s unless block ~0.3 ~ ~ #ui:nocol run setblock ~ ~ ~ wall_torch[facing=west] destroy
    execute as @e[tag=ui_224_1] at @s unless block ~-0.3 ~ ~ #ui:nocol run setblock ~ ~ ~ wall_torch[facing=east] destroy
    execute as @e[tag=ui_224_1] at @s unless block ~ ~ ~0.3 #ui:nocol run setblock ~ ~ ~ wall_torch[facing=north] destroy
    execute as @e[tag=ui_224_1] at @s unless block ~ ~ ~-0.3 #ui:nocol run setblock ~ ~ ~ wall_torch[facing=south] destroy
    execute as @e[tag=ui_224_1] at @s if block ~ ~ ~ torch run kill @s
    execute as @e[tag=ui_224_1] at @s if block ~ ~ ~ wall_torch run kill @s
# 銃火器型
    execute as @e[tag=ui_224_1] at @s run function ui:tmw/224/proj/tick

# SSロジック維持
    execute if entity @e[tag=ui_224_1] run schedule function ui:tmw/224/ss 1t append