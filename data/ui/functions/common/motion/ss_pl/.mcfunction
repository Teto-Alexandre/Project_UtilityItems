# 弾丸
    execute as @a[tag=ui_common_motion_player] at @s run function ui:common/motion/ss_pl/tick

# SSロジック維持
    execute if entity @a[tag=ui_common_motion_player] run schedule function ui:common/motion/ss_pl/ 1t append