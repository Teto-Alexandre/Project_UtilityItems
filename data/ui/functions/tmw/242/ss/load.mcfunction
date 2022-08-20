# ミサイル
    execute as @e[tag=tmw_242,scores={ui_gms=1}] at @s run function ui:tmw/242/missile/1
    execute as @e[tag=tmw_242,scores={ui_gms=2}] at @s run function ui:tmw/242/missile/2

# SSロジック維持
    execute if entity @e[tag=tmw_242] run schedule function ui:tmw/242/ss/load 1t append