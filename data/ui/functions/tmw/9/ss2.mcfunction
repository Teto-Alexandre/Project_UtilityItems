# 見た目
    execute as @e[tag=tmw_9_4] run function ui:tmw/9/9_4

# SSロジック維持
    execute if entity @e[tag=tmw_9_4] run schedule function ui:tmw/9/ss2 1t append