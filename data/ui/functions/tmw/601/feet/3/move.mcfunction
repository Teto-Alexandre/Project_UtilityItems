# 移動形態になる

# 特殊効果
    effect clear @s slowness
    effect give @s speed 1 25 true
    effect give @s jump_boost 1 3 true

# エフェクト
    particle block iron_block ~ ~0.2 ~ 0.1 0.1 0.1 0 2 normal
    execute if score $world ui_tc matches 1 run playsound block.stone.break player @a ~ ~ ~ 0.8 1.2 0
    execute if score $world ui_tc matches 11 run playsound block.stone.break player @a ~ ~ ~ 0.8 1.2 0

# 素早く坂を上る挙動
    execute as @s if score $fall ui_temp matches 0 rotated ~ 0 unless block ~ ~ ~ #minecraft:slabs unless block ^ ^ ^0.5 #ui:nocol unless block ^ ^ ^0.5 #ui:nocol if block ^ ^1 ^0.5 #ui:nocol if block ^0.4 ^1 ^0.5 #ui:nocol if block ^-0.4 ^1 ^0.5 #ui:nocol if block ^ ^1 ^0.9 #ui:nocol unless block ^ ^ ^0.5 #minecraft:slabs unless block ^ ^ ^0.5 #ui:nocol run teleport @s ^ ^1 ^0.4

# タグを返す
    tag @s add ui_temp_move