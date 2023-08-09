# チャージ

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle dust 0 1 0 1 ~ ~0.1 ~ 0.4 0.1 0.4 0 25
execute if entity @s[tag=tmw601_changed] run playsound entity.player.attack.sweep player @a ~ ~ ~ 0.6 1.5

#
effect give @s jump_boost 1 3 true
execute if predicate ui:percentage/50 if entity @s[nbt={OnGround:0b}] run particle dust 1 1 1 0.9 ~ ~0.1 ~ 0.3 0.1 0.3 0 1
execute if predicate ui:percentage/50 if entity @s[nbt={OnGround:0b}] run particle dust 0 1 0 0.9 ~ ~0.1 ~ 0.3 0.1 0.3 0 1