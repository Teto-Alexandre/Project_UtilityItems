# スニークしてる時

# 壁上り
    execute if score $color ui_temp matches 1 if block ~-0.6 ~ ~ light_blue_wool as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_wall
    execute if score $color ui_temp matches 2 if block ~-0.6 ~ ~ pink_wool as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_wall
    execute if score $color ui_temp matches 1 if block ~0.6 ~ ~ light_blue_wool as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_wall
    execute if score $color ui_temp matches 2 if block ~0.6 ~ ~ pink_wool as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_wall
    execute if score $color ui_temp matches 1 if block ~ ~ ~-0.6 light_blue_wool as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_wall
    execute if score $color ui_temp matches 2 if block ~ ~ ~-0.6 pink_wool as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_wall
    execute if score $color ui_temp matches 1 if block ~ ~ ~0.6 light_blue_wool as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_wall
    execute if score $color ui_temp matches 2 if block ~ ~ ~0.6 pink_wool as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_wall
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25b,Amplifier:7b}]}] levitation
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25b,Amplifier:3b}]}] levitation
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25b,Amplifier:-1b}]}] levitation
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25b,Amplifier:-5b}]}] levitation
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25b,Amplifier:-9b}]}] levitation
    execute as @s[tag=ui_temp_wall] run function ui:tmw/237/wall

# 天井走り
    execute if score $color ui_temp matches 1 if block ~ ~2.3 ~ light_blue_wool as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_top
    execute if score $color ui_temp matches 2 if block ~ ~2.3 ~ pink_wool as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_top
    effect clear @s[tag=!ui_temp_top,nbt={ActiveEffects:[{Id:25b,Amplifier:0b}]}] levitation
    execute as @s[tag=ui_temp_top] run function ui:tmw/237/top

# トラップドアをすり抜ける
    scoreboard players set $fall ui_temp 0
    execute as @s[scores={ui_st=1..}] if block ~ ~-0.1 ~ iron_trapdoor run scoreboard players set $fall ui_temp 1
    execute if score $fall ui_temp matches 1 run teleport @s ~ ~-1 ~

# スライムブロックの上にいるとジャンプ力アップ 
    execute if block ~ ~-0.3 ~ slime_block run effect give @s jump_boost 1 8 true

# 下記に該当しないなら射撃形態になる
    execute if score $color ui_temp matches 1 unless entity @s[tag=ui_temp_wall] unless entity @s[tag=ui_temp_top] unless block ~ ~-0.3 ~ light_blue_wool unless entity @e[type=shulker,nbt={Color:3b}] run function ui:tmw/237/shoot
    execute if score $color ui_temp matches 2 unless entity @s[tag=ui_temp_wall] unless entity @s[tag=ui_temp_top] unless block ~ ~-0.3 ~ pink_wool unless entity @e[type=shulker,nbt={Color:6b}] run function ui:tmw/237/shoot

# 特定地形の上なら移動形態になる
    execute if score $color ui_temp matches 1 as @s[scores={ui_gct=-1}] if block ~ ~-0.3 ~ light_blue_wool run function ui:tmw/237/move
    execute if score $color ui_temp matches 2 as @s[scores={ui_gct=-1}] if block ~ ~-0.3 ~ pink_wool run function ui:tmw/237/move
    execute if score $color ui_temp matches 1 as @s[scores={ui_gct=-1}] positioned ~ ~-0.3 ~ if entity @e[type=shulker,nbt={Color:3b}] run function ui:tmw/237/move
    execute if score $color ui_temp matches 2 as @s[scores={ui_gct=-1}] positioned ~ ~-0.3 ~ if entity @e[type=shulker,nbt={Color:6b}] run function ui:tmw/237/move

# タグ消し
    tag @s[tag=ui_temp_wall] remove ui_temp_wall
    tag @s[tag=ui_temp_top] remove ui_temp_top