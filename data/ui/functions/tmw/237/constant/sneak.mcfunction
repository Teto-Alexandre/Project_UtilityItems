# スニークしてる時

# 壁上り
    execute if score $team ui_temp matches 1 as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run function ui:tmw/237/constant/sneak/wall1
    execute if score $team ui_temp matches 2 as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run function ui:tmw/237/constant/sneak/wall2
    execute if score $team ui_temp matches 3 as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run function ui:tmw/237/constant/sneak/wall3
    execute if score $team ui_temp matches 4 as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run function ui:tmw/237/constant/sneak/wall4
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25,Amplifier:7b}]}] levitation
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25,Amplifier:3b}]}] levitation
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25,Amplifier:-1b}]}] levitation
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25,Amplifier:-5b}]}] levitation
    effect clear @s[tag=!ui_temp_wall,nbt={ActiveEffects:[{Id:25,Amplifier:-9b}]}] levitation
    effect clear @s[nbt={ActiveEffects:[{Id:8,Amplifier:-128b,Duration:15}]}] levitation
    execute as @s[tag=ui_temp_wall] run function ui:tmw/237/constant/wall

# 天井走り
    execute if score $team ui_temp matches 1 if block ~ ~2.3 ~ #ui:light_blue as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_top
    execute if score $team ui_temp matches 2 if block ~ ~2.3 ~ #ui:pink as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_top
    execute if score $team ui_temp matches 3 if block ~ ~2.3 ~ #ui:yellow as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_top
    execute if score $team ui_temp matches 4 if block ~ ~2.3 ~ #ui:lime as @s[scores={ui_gct=-1},nbt={OnGround:0b}] run tag @s add ui_temp_top
    effect clear @s[tag=!ui_temp_top,nbt={ActiveEffects:[{Id:25,Amplifier:0b}]}] levitation
    execute as @s[tag=ui_temp_top] run function ui:tmw/237/constant/top

# トラップドアをすり抜ける
    scoreboard players set $fall ui_temp 0
    execute as @s[scores={ui_st=1..}] if block ~ ~-0.1 ~ iron_trapdoor run scoreboard players set $fall ui_temp 1
    execute if score $fall ui_temp matches 1 run teleport @s ~ ~-1 ~

# スライムブロックの上にいるとジャンプ力アップ 
    execute if block ~ ~-0.3 ~ slime_block run effect give @s jump_boost 1 8 true

# 下記に該当しないなら射撃形態になる
    execute if score $team ui_temp matches 1 unless entity @s[tag=ui_temp_wall] unless entity @s[tag=ui_temp_top] unless block ~ ~-0.3 ~ #ui:light_blue unless entity @e[type=shulker,nbt={Color:3b}] run function ui:tmw/237/constant/shoot
    execute if score $team ui_temp matches 2 unless entity @s[tag=ui_temp_wall] unless entity @s[tag=ui_temp_top] unless block ~ ~-0.3 ~ #ui:pink unless entity @e[type=shulker,nbt={Color:6b}] run function ui:tmw/237/constant/shoot
    execute if score $team ui_temp matches 3 unless entity @s[tag=ui_temp_wall] unless entity @s[tag=ui_temp_top] unless block ~ ~-0.3 ~ #ui:yellow unless entity @e[type=shulker,nbt={Color:4b}] run function ui:tmw/237/constant/shoot
    execute if score $team ui_temp matches 4 unless entity @s[tag=ui_temp_wall] unless entity @s[tag=ui_temp_top] unless block ~ ~-0.3 ~ #ui:lime unless entity @e[type=shulker,nbt={Color:5b}] run function ui:tmw/237/constant/shoot

# 特定地形の上なら移動形態になる
    execute if score $team ui_temp matches 1 as @s[scores={ui_gct=-1}] if block ~ ~-0.3 ~ #ui:light_blue run function ui:tmw/237/constant/move
    execute if score $team ui_temp matches 2 as @s[scores={ui_gct=-1}] if block ~ ~-0.3 ~ #ui:pink run function ui:tmw/237/constant/move
    execute if score $team ui_temp matches 3 as @s[scores={ui_gct=-1}] if block ~ ~-0.3 ~ #ui:yellow run function ui:tmw/237/constant/move
    execute if score $team ui_temp matches 4 as @s[scores={ui_gct=-1}] if block ~ ~-0.3 ~ #ui:lime run function ui:tmw/237/constant/move
    execute if score $team ui_temp matches 1 as @s[scores={ui_gct=-1}] positioned ~ ~-0.3 ~ if entity @e[type=shulker,nbt={Color:3b},dx=0,dy=0,dz=0] positioned ~ ~0.3 ~ run function ui:tmw/237/constant/move
    execute if score $team ui_temp matches 2 as @s[scores={ui_gct=-1}] positioned ~ ~-0.3 ~ if entity @e[type=shulker,nbt={Color:6b},dx=0,dy=0,dz=0] positioned ~ ~0.3 ~ run function ui:tmw/237/constant/move
    execute if score $team ui_temp matches 3 as @s[scores={ui_gct=-1}] positioned ~ ~-0.3 ~ if entity @e[type=shulker,nbt={Color:4b},dx=0,dy=0,dz=0] positioned ~ ~0.3 ~ run function ui:tmw/237/constant/move
    execute if score $team ui_temp matches 4 as @s[scores={ui_gct=-1}] positioned ~ ~-0.3 ~ if entity @e[type=shulker,nbt={Color:5b},dx=0,dy=0,dz=0] positioned ~ ~0.3 ~ run function ui:tmw/237/constant/move

# 素早く坂を下りる挙動
    execute as @s[scores={ui_st=1..},nbt={OnGround:1b}] rotated ~ 0 if block ^ ^-1 ^1 #ui:nocol if block ^ ^ ^1 #ui:nocol if block ^ ^-1 ^0.5 #ui:nocol if block ^ ^ ^0.5 #ui:nocol if block ^ ^-1 ^0.9 #ui:nocol if block ^0.4 ^-1 ^0.5 #ui:nocol if block ^-0.4 ^-1 ^0.5 #ui:nocol unless block ^ ^-2 ^0.5 #ui:nocol unless block ^ ^-2 ^0.5 water if block ~ ~ ~ #ui:nocol run teleport @s ^ ^-1 ^0.6

# タグ消し
    tag @s[tag=ui_temp_wall] remove ui_temp_wall
    tag @s[tag=ui_temp_top] remove ui_temp_top