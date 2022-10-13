# 移動形態（壁上り形態ver）になる

# 特殊効果
    effect clear @s slowness
    effect clear @s levitation
    effect give @s speed 1 25 true
    effect give @s[x_rotation=-90..-40] levitation 1 7 true
    effect give @s[x_rotation=-39..-11] levitation 1 3 true
    effect give @s[x_rotation=-10..10] levitation 1 255 true
    effect give @s[x_rotation=11..39] levitation 1 251 true
    effect give @s[x_rotation=40..90] levitation 1 247 true

# エフェクト
    particle block iron_block ~ ~1.2 ~ 0.1 0.1 0.1 0 2 normal
    execute if score $world ui_tc matches 1 run playsound block.stone.break player @a ~ ~ ~ 0.8 1.2 0
    execute if score $world ui_tc matches 11 run playsound block.stone.break player @a ~ ~ ~ 0.8 1.2 0

# タグを返す
    tag @s add ui_temp_move