# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
    scoreboard players operation $temp ui_temp = @s ui_team
    execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $temp ui_temp run tag @s add ui_temp_team

# ヒット音
    execute if score @s ui_hpart matches 0 run playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1 1
    execute if score @s ui_hpart matches 1 run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 0.8 1
    execute if score @s ui_hpart matches 2 run playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 0.5
    execute if score @s ui_hpart matches 3 run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 2
    execute if score @s ui_hpart matches 5 run playsound minecraft:item.trident.hit neutral @a ~ ~ ~ 1 1

# ヒットパーティクル
    execute if score @s ui_hpart matches 1 run particle explosion ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_hpart matches 1 run particle flame ~ ~ ~ 0 0 0 0.25 10 force
    execute if score @s ui_hpart matches 2 run particle dust 0.5 1 1 1 ~ ~ ~ 0.3 0.3 0.3 0 10 force
    execute if score @s ui_hpart matches 2 run particle block ice ~ ~ ~ 0.3 0.3 0.3 0 10 force
    execute if score @s ui_hpart matches 3 run particle dust 1 1 0.5 1 ~ ~ ~ 0.5 0.5 0.5 0 10 force
    execute if score @s ui_hpart matches 3 run particle block gold_block ~ ~ ~ 0.3 0.3 0.3 0 10 force
    execute if score @s ui_hpart matches 5 run particle crit ~ ~ ~ 0 0 0 0.8 5 force

# その他
    execute if score @s ui_hpart matches 4 run summon creeper ~ ~ ~ {ExplosionRadius:3,ignited:1b,Fuse:0,CustomName:'{"text":"魔法"}'}

# キル
    kill @s

# 一時タグ削除
    tag @e[tag=ui_temp_team] remove ui_temp_team