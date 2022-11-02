# 鉄装備

# 壁上り
    execute if block ~-0.6 ~ ~ iron_block run tag @s add ui_temp_wall
    execute if block ~0.6 ~ ~ iron_block run tag @s add ui_temp_wall
    execute if block ~ ~ ~-0.6 iron_block run tag @s add ui_temp_wall
    execute if block ~ ~ ~0.6 iron_block run tag @s add ui_temp_wall
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25,Amplifier:7b}]}] levitation
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25,Amplifier:3b}]}] levitation
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25,Amplifier:-1b}]}] levitation
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25,Amplifier:-5b}]}] levitation
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25,Amplifier:-9b}]}] levitation
    effect clear @s[nbt={ActiveEffects:[{Id:8,Amplifier:-128b,Duration:15}]}] levitation
    execute as @s[tag=ui_temp_wall] run function ui:tmw/601/feet/3/wall

# 天井走り
    execute if block ~ ~2.3 ~ iron_block as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_top
    effect clear @s[tag=!ui_temp_top,nbt={ActiveEffects:[{Id:25,Amplifier:0b}]}] levitation
    execute as @s[tag=ui_temp_top] run function ui:tmw/601/feet/3/top

# 下記に該当しないなら射撃形態になる
    execute unless entity @s[tag=ui_temp_wall] unless entity @s[tag=ui_temp_top] unless block ~ ~-0.3 ~ iron_block run function ui:tmw/601/feet/3/shoot

# 特定地形の上なら移動形態になる
    execute as @s[scores={ui_gct=-1}] if block ~ ~-0.3 ~ iron_block run function ui:tmw/601/feet/3/move

# 素早く坂を下りる挙動
    execute as @s[scores={ui_st=1..},nbt={OnGround:1b}] rotated ~ 0 if block ^ ^-1 ^1 #ui:nocol if block ^ ^ ^1 #ui:nocol if block ^ ^-1 ^0.5 #ui:nocol if block ^ ^ ^0.5 #ui:nocol if block ^ ^-1 ^0.9 #ui:nocol if block ^0.4 ^-1 ^0.5 #ui:nocol if block ^-0.4 ^-1 ^0.5 #ui:nocol unless block ^ ^-2 ^0.5 #ui:nocol unless block ^ ^-2 ^0.5 water if block ~ ~ ~ #ui:nocol run teleport @s ^ ^-1 ^0.6

# タグ消し
    tag @s[tag=ui_temp_wall] remove ui_temp_wall
    tag @s[tag=ui_temp_top] remove ui_temp_top