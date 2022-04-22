# 初回検知
    execute if entity @s[tag=ui_15_temp] run function ui:ui/15/temp

# 周囲の水を凍らせる
    fill ~-6 ~-0.5 ~-2 ~6 ~-0.5 ~2 blue_ice replace water
    fill ~-5 ~-0.5 ~-3 ~5 ~-0.5 ~-4 blue_ice replace water
    fill ~-5 ~-0.5 ~3 ~5 ~-0.5 ~4 blue_ice replace water
    fill ~-4 ~-0.5 ~-5 ~4 ~-0.5 ~-5 blue_ice replace water
    fill ~-4 ~-0.5 ~5 ~4 ~-0.5 ~5 blue_ice replace water
    fill ~-2 ~-0.5 ~-6 ~2 ~-0.5 ~-6 blue_ice replace water
    fill ~-2 ~-0.5 ~6 ~2 ~-0.5 ~6 blue_ice replace water

# 氷マーカー設置
    execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=ui_15_3,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ui_15_3"]}

# 演出
    particle snowflake ~ ~0.5 ~ 1 0.1 1 0.01 2 force