## 何かすべきことはない、暗視

# 死んでるとき or 観戦時の tick
particle end_rod ~ ~ ~ 0 0 0 0.01 1 force

# 死亡時
execute if entity @s[tag=tmw_501_19_dead_first] run function ui:tmw/501/19/periodic/dead_first
