# 発動
    execute as @e[type=item,distance=..50] run teleport @s ~ ~ ~
    execute as @e[type=experience_orb,distance=..50] run teleport @s ~ ~ ~
    experience add @s -3 levels

# 効果
    particle firework ~ ~1 ~ 0.5 0.5 0.5 0.05 10 normal
    playsound block.beacon.power_select player @a ~ ~ ~ 1 1.5 0

# temp
    tag @s add ui_temp