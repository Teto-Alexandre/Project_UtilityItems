# 見た目
    execute as @e[tag=tmw_10_1,tag=!tmw_10_3] run function ui:tmw/10/10_1/tick

# SSロジック維持
    execute if entity @e[tag=tmw_10_1,tag=!tmw_10_3] run schedule function ui:tmw/10/ss 1t append