# ミサイル
    execute as @e[tag=tmw_242] at @s run function ui:tmw/242/missile/main

# SSロジック維持
    execute if entity @e[tag=tmw_242] run schedule function ui:tmw/242/ss/load 1t append