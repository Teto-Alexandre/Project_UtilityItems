# idリンク形成
    scoreboard players operation $id ui_temp = @s ui_id
    execute as @e[tag=ui_17_2] if score @s ui_id = $id ui_temp run tag @s add ui_17_2_they
    execute as @e[tag=ui_17_3] if score @s ui_id = $id ui_temp run tag @s add ui_17_3_they
    execute as @e[tag=ui_17_4] if score @s ui_id = $id ui_temp run tag @s add ui_17_4_they

# ヘルスが最大でないシュルカー各シュルカーにダメージを計上させる
    execute as @e[tag=ui_17_3_they,nbt=!{Health:1000.0f}] run function ui:ui/17/17_3

# 中のプレイヤーを上に移動
    execute as @a[distance=..0.5] run teleport @s ~ ~3 ~

# 上のプレイヤーカウント
    scoreboard players set $temp ui_temp 0
    execute positioned ~-1.5 ~2.9 ~-1.5 if entity @e[type=player,dx=2,dy=1,dz=2,scores={ui_team=1}] run scoreboard players add $temp ui_temp 1
    execute positioned ~-1.5 ~2.9 ~-1.5 if entity @e[type=player,dx=2,dy=1,dz=2,scores={ui_team=2}] run scoreboard players remove $temp ui_temp 1
    execute if score $temp ui_temp matches 1 as @e[tag=ui_17_3_they] run data merge entity @s {Color:3}
    execute if score $temp ui_temp matches 0 as @e[tag=ui_17_3_they] run data merge entity @s {Color:0}
    execute if score $temp ui_temp matches -1 as @e[tag=ui_17_3_they] run data merge entity @s {Color:6}

# レーン敷設
    execute if entity @e[tag=ui_17_4_they,tag=!ui_17_4_mid,distance=..0.1] run function ui:ui/17/17_1_root.del
    execute unless entity @e[tag=ui_17_4_they] run function ui:ui/17/17_1_root
    execute if score $temp ui_temp matches 1 facing entity @e[tag=ui_17_4_they,tag=ui_17_4_aqua] feet positioned ~-1.5 ~2.9 ~-1.5 as @a[dx=2,dy=1,dz=2] positioned as @s run teleport @s ^ ^ ^0.1
    execute if score $temp ui_temp matches -1 facing entity @e[tag=ui_17_4_they,tag=ui_17_4_pink] feet positioned ~-1.5 ~2.9 ~-1.5 as @a[dx=2,dy=1,dz=2] positioned as @s run teleport @s ^ ^ ^0.1
    execute if score $temp ui_temp matches 1 facing entity @e[tag=ui_17_4_they,tag=ui_17_4_aqua] feet run teleport @s ^ ^ ^0.1
    execute if score $temp ui_temp matches -1 facing entity @e[tag=ui_17_4_they,tag=ui_17_4_pink] feet run teleport @s ^ ^ ^0.1
    execute if score $temp ui_temp matches 1 unless entity @e[tag=ui_17_4_they,tag=ui_17_4_aqua] run function ui:ui/17/17_4_aqua
    execute if score $temp ui_temp matches -1 unless entity @e[tag=ui_17_4_they,tag=ui_17_4_pink] run function ui:ui/17/17_4_pink

## 上のプレイヤー移動
#    execute if block ~ ~-1 ~ light_blue_concrete positioned ~-1.5 ~2.9 ~-1.5 as @a[dx=2,dy=1,dz=2] at @s run teleport @s ~0.1 ~ ~
#    execute if block ~ ~-1 ~ pink_concrete positioned ~-1.5 ~2.9 ~-1.5 as @a[dx=2,dy=1,dz=2] at @s run teleport @s ~-0.1 ~ ~

# シュルカーで描画
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_0] ~-1 ~ ~-1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_1] ~ ~ ~-1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_2] ~1 ~ ~-1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_3] ~-1 ~1 ~-1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_4] ~ ~1 ~-1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_5] ~1 ~1 ~-1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_6] ~-1 ~2 ~-1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_7] ~ ~2 ~-1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_8] ~1 ~2 ~-1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_9] ~-1 ~ ~
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_10] ~1 ~ ~
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_11] ~-1 ~1 ~
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_12] ~1 ~1 ~
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_13] ~-1 ~2 ~
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_14] ~ ~2 ~
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_15] ~1 ~2 ~
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_16] ~-1 ~ ~1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_17] ~ ~ ~1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_18] ~1 ~ ~1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_19] ~-1 ~1 ~1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_20] ~ ~1 ~1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_21] ~1 ~1 ~1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_22] ~-1 ~2 ~1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_23] ~ ~2 ~1
    execute at @s run teleport @e[tag=ui_17_2_they,tag=ui_17_2_24] ~1 ~2 ~1

# タグ消し
    tag @e[tag=ui_17_2_they] remove ui_17_2_they
    tag @e[tag=ui_17_3_they] remove ui_17_3_they
    tag @e[tag=ui_17_4_they] remove ui_17_4_they