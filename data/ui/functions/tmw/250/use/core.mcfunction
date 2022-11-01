#使用時

# 選択肢
    execute if entity @e[tag=tmw_250_1,distance=..50] run function ui:tmw/250/use/trigger

# 周囲にコアがないならコアを召喚
    execute unless entity @e[tag=tmw_250_1,distance=..50] run function ui:tmw/250/use/summon