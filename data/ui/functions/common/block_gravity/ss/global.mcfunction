# 弾丸
    execute as @e[tag=ui_common_block_gravity] at @s run function ui:common/block_gravity/ss/each

# SSロジック維持
    execute if entity @e[tag=ui_common_block_gravity] run schedule function ui:common/block_gravity/ss/global 1t append

# リセット
    scoreboard players reset $common_block_gravity ui_temp
    kill @e[tag=ui_common_temp_block_gravity_end]