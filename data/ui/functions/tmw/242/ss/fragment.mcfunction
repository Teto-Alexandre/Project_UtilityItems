# 個別
    execute as @e[tag=tmw_242_f] at @s run function ui:tmw/242/fragment/main

# SSロジック維持
    execute if entity @e[tag=tmw_242_f] run schedule function ui:tmw/242/ss/fragment 1t append