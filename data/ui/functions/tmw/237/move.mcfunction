# 自分の色の羊毛を踏んだ時

# 特殊効果
    effect clear @s slowness
    effect give @s speed 1 25 true
    effect give @s jump_boost 1 4 true
    effect give @s invisibility 1 0 true
    effect clear @s[tag=tmw_237_regen5] regeneration
    effect give @s[tag=tmw_237_regen3] regeneration 1 3 true
    tag @s[tag=tmw_237_regen5] remove tmw_237_regen1
    tag @s[tag=tmw_237_regen5] remove tmw_237_regen2
    tag @s[tag=tmw_237_regen5] remove tmw_237_regen3
    tag @s[tag=tmw_237_regen5] remove tmw_237_regen4
    tag @s[tag=tmw_237_regen5] remove tmw_237_regen5
    tag @s[tag=tmw_237_regen4] add tmw_237_regen5
    tag @s[tag=tmw_237_regen3] add tmw_237_regen4
    tag @s[tag=tmw_237_regen2] add tmw_237_regen3
    tag @s[tag=tmw_237_regen1] add tmw_237_regen2
    tag @s[tag=!tmw_237_regen5] add tmw_237_regen1
    scoreboard players set $burst ui_temp 0
    scoreboard players set @s ui_use2 0

# エフェクト
    execute if score $color ui_temp matches 1 run particle block light_blue_concrete ~ ~ ~ 0.1 0.1 0.1 0 1 normal
    execute if score $color ui_temp matches 2 run particle block pink_concrete ~ ~ ~ 0.1 0.1 0.1 0 1 normal
    execute if score $world ui_tc matches 1 run playsound block.honey_block.step player @a ~ ~ ~ 0.8 1.2 0

# タグを返す
    tag @s add ui_temp_move