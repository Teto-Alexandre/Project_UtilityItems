# 魔導障壁回復
    scoreboard players add @a ui_dhp 1
    execute as @a run scoreboard players operation @s ui_dhp < @s ui_dhpm

# ボスバー
    ## 幽玄の王
        execute if entity @e[tag=ui_enemy_dream2] run bossbar set ui:dream2 players @a[nbt={Dimension:"ui:dream"}]
        execute unless entity @e[tag=ui_enemy_dream2] run bossbar set ui:dream2 players -

# 契約
    ## 誘雷
        execute as @e[tag=tmw_501_5] at @s run function ui:tmw/501/functed/5_10sec

# コープスフラッグ定期リセット  
    scoreboard players reset @a[scores={ui_openc=1..}] ui_openc

# レベル関数
    execute as @a[scores={ui_lvl_craft_exp=0..}] run function ui:level/craft/exp
    execute as @a[scores={ui_lvl_mine_exp=0..}] run function ui:level/mine/exp
    execute as @a[scores={ui_lvl_cut_exp=0..}] run function ui:level/cut/exp
    execute as @a[scores={ui_lvl_dig_exp=0..}] run function ui:level/dig/exp
    execute as @a[scores={ui_lvl_harv_exp=0..}] run function ui:level/harv/exp

# 次周期用
    scoreboard players set $world2 ui_tc 1