# 弾丸
    execute as @e[tag=ui_common_particle] at @s run function ui:common/particle/ss/tick

# SSロジック維持
    execute if entity @e[tag=ui_common_particle] run schedule function ui:common/particle/ss/global 1t append