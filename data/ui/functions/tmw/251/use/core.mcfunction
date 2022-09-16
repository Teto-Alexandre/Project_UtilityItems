#使用時

# 選択肢
    execute if entity @e[tag=tmw_251_1,distance=..50] run function ui:tmw/251/use/trigger

# 周囲にコアがないならコアを召喚
    execute unless entity @e[tag=tmw_251_1,distance=..50] run function ui:tmw/251/use/summon