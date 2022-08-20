# 共通
    scoreboard players remove @e[tag=tmw_242_f] ui_is2 1
    execute as @e[tag=tmw_242_f] if score @s ui_is2 matches ..0 run tag @s add ex
    particle firework ~ ~ ~ 0 0 0 0 1 force

# 個別
    execute as @e[tag=tmw_242_f,scores={ui_gms=1}] at @s run function ui:tmw/242/fragment/_1
    execute as @e[tag=tmw_242_f,scores={ui_gms=2}] at @s run function ui:tmw/242/fragment/_2

# SSロジック維持
    execute if entity @e[tag=tmw_242_f] run schedule function ui:tmw/242/ss/fragment 1t append