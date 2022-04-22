# 見た目
    execute at @e[tag=tmw_11_2] run particle dust 1 1 1 0.8 ~ ~ ~ 0.3 0.3 0.3 0 3 force

# SSロジック維持
    execute if entity @e[tag=tmw_11_2] run schedule function ui:tmw/11/ss 1t append