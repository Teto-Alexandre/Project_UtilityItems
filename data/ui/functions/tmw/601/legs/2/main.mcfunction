# 発光

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle end_rod ~ ~0.5 ~ 0.4 0.2 0.4 0 8
execute if entity @s[tag=tmw601_changed] run playsound entity.guardian.death player @a ~ ~ ~ 0.8 2

#
execute as @e[distance=1..10,predicate=ui:load_unhurtable] run effect give @s glowing 1 0 true
