#ヒット音
    execute if score @s ui_hpart matches 0 run playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1 1
    execute if score @s ui_hpart matches 1 run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 0.8 1
    execute if score @s ui_hpart matches 2 run playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 0.5
    execute if score @s ui_hpart matches 3 run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 2
    execute if score @s ui_hpart matches 5 run playsound minecraft:block.honey_block.break neutral @a ~ ~ ~ 1 1

#ヒットパーティクル
    execute if score @s ui_hpart matches 1 run particle explosion ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_hpart matches 1 run particle flame ~ ~ ~ 0 0 0 0.25 10 force
    execute if score @s ui_hpart matches 2 run particle dust 0.5 1 1 1 ~ ~ ~ 0.3 0.3 0.3 0 10 force
    execute if score @s ui_hpart matches 2 run particle block ice ~ ~ ~ 0.3 0.3 0.3 0 10 force
    execute if score @s ui_hpart matches 3 run particle dust 1 1 0.5 1 ~ ~ ~ 0.5 0.5 0.5 0 10 force
    execute if score @s ui_hpart matches 3 run particle block gold_block ~ ~ ~ 0.3 0.3 0.3 0 10 force
    execute if score @s ui_hpart matches 5 run particle dust 0.5 1 1 1 ~ ~ ~ 0.4 0.4 0.4 0 10 force
    execute if score @s ui_hpart matches 5 run particle block light_blue_concrete ~ ~ ~ 0.4 0.4 0.4 0 10 force
    execute if score @s ui_hpart matches 6 run particle dust 0.5 1 1 1 ~ ~ ~ 0.7 0.7 0.7 0 20 force
    execute if score @s ui_hpart matches 6 run particle block light_blue_concrete ~ ~ ~ 0.7 0.7 0.7 0 20 force
    execute if score @s ui_hpart matches 7 run particle dust 0.5 1 1 1 ~ ~ ~ 2 2 2 0 40 force
    execute if score @s ui_hpart matches 7 run particle block light_blue_concrete ~ ~ ~ 2 2 2 0 40 force
    execute if score @s ui_hpart matches 7 run particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
    execute if score @s ui_hpart matches 15 run particle dust 1 0.5 1 1 ~ ~ ~ 0.4 0.4 0.4 0 10 force
    execute if score @s ui_hpart matches 15 run particle block pink_concrete ~ ~ ~ 0.4 0.4 0.4 0 10 force
    execute if score @s ui_hpart matches 16 run particle dust 1 0.5 1 1 ~ ~ ~ 0.7 0.7 0.7 0 20 force
    execute if score @s ui_hpart matches 16 run particle block pink_concrete ~ ~ ~ 0.7 0.7 0.7 0 20 force
    execute if score @s ui_hpart matches 17 run particle dust 1 0.5 1 1 ~ ~ ~ 2 2 2 0 40 force
    execute if score @s ui_hpart matches 17 run particle block pink_concrete ~ ~ ~ 2 2 2 0 40 force
    execute if score @s ui_hpart matches 17 run particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force

#その他
    execute if score @s ui_hpart matches 4 run summon creeper ~ ~ ~ {ExplosionRadius:3,ignited:1b,Fuse:0}
    execute if score @s ui_hpart matches 5 store result score $temp ui_temp run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 light_blue_wool replace #ui:wools
    execute if score @s ui_hpart matches 6 store result score $temp ui_temp run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 light_blue_wool replace #ui:wools
    execute if score @s ui_hpart matches 7 store result score $temp ui_temp run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 light_blue_wool replace #ui:wools
    execute if score @s ui_hpart matches 15 store result score $temp ui_temp run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 pink_wool replace #ui:wools
    execute if score @s ui_hpart matches 16 store result score $temp ui_temp run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 pink_wool replace #ui:wools
    execute if score @s ui_hpart matches 17 store result score $temp ui_temp run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 pink_wool replace #ui:wools
    execute if score @s ui_hpart matches 5..7 as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $temp ui_temp
    execute if score @s ui_hpart matches 15..17 as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $temp ui_temp

#
    kill @s