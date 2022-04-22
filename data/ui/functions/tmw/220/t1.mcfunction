# 発動
    execute as @e[type=item,distance=..15] run teleport @s ~ ~ ~
    experience add @s -1 levels

# 効果
    particle firework ~ ~1 ~ 0.5 0.5 0.5 0.05 10 normal
    playsound block.beacon.power_select player @a ~ ~ ~ 1 2 0

# temp
    tag @s add ui_temp