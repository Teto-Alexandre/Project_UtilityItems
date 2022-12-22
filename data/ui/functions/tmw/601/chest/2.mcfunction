# ガード

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle crit ~ ~1.1 ~ 0.5 0 0.5 0.5 8
execute if entity @s[tag=tmw601_changed] run particle dust 0.5 0.8 1 0.5 ~ ~1.1 ~ 0.5 0.2 0.5 0 15
execute if entity @s[tag=tmw601_changed] run playsound block.anvil.use player @a ~ ~ ~ 0.5 1.8

#
execute if predicate ui:percentage/2.5 run effect give @s resistance 1 2 false