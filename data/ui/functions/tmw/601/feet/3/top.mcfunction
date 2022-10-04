# 移動形態（壁上り形態ver）になる

# 特殊効果
    effect clear @s slowness
    effect clear @s levitation
    effect give @s speed 1 25 true
    effect give @s levitation 1 0 true

# エフェクト
    particle block iron_block ~ ~1.5 ~ 0.1 0.1 0.1 0 2 normal
    execute if score $world ui_tc matches 1 run playsound block.stone.break player @a ~ ~ ~ 0.8 1.2 0
    execute if score $world ui_tc matches 11 run playsound block.stone.break player @a ~ ~ ~ 0.8 1.2 0

# タグを返す
    tag @s add ui_temp_move