# 弾丸
    execute as @e[tag=tmw_237_Punit] at @s run function ui:tmw/237/particle_unit/tick

# SSロジック維持
    execute if entity @e[tag=tmw_237_Punit] run schedule function ui:tmw/237/ss/3 1t append