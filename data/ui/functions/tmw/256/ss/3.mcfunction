# 弾丸
    execute as @e[tag=tmw_256_Punit] at @s run function ui:tmw/256/particle_unit/tick

# SSロジック維持
    execute if entity @e[tag=tmw_256_Punit] run schedule function ui:tmw/256/ss/3 1t append