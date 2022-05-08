#ブロックにぶつかったときの反応

# 貫通
    # 今の状態を観測 true=1 false=0
    execute store result score $temp ui_temp run gamerule mobGriefing
    execute if score $temp ui_temp matches 1 run function ui:common/projectile/block_col.true
    execute if score $temp ui_temp matches 0 run function ui:common/projectile/kill

# 耐えた時もこのtickの移動はおしまい
    tag @s add ui_temp_col