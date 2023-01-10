# 弾丸
    execute as @e[tag=ui_common_particle,scores={ui_gpc=1..}] at @s run function ui:common/particle/ss/upper/particle_u
    execute as @e[tag=ui_common_particle,scores={ui_gpc=..-1}] at @s run function ui:common/particle/ss/downer/particle_d

# SSロジック維持
    execute if entity @e[tag=ui_common_particle] run schedule function ui:common/particle/ss/global 1t append