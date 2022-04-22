# 氷柱
    execute as @e[tag=tmw_102_3] at @s run function ui:tmw/102/102_4

# SSロジック維持
    execute if entity @e[tag=tmw_102_3] run schedule function ui:tmw/102/ss 1t append