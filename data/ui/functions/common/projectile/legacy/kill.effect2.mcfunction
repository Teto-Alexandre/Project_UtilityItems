# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
    scoreboard players operation $team ui_temp = @s ui_team
    function ui:common/tag_temp_team/

# ヒット音
    execute if score @s ui_hpart matches 0 run playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1 1
    execute if score @s ui_hpart matches 1 run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 0.8 1
    execute if score @s ui_hpart matches 2 run playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 0.5
    execute if score @s ui_hpart matches 3 run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 2
    execute if score @s ui_hpart matches 5 run playsound minecraft:item.trident.hit neutral @a ~ ~ ~ 1 1
    execute if score @s ui_hpart matches 101 run playsound minecraft:item.trident.hit neutral @a ~ ~ ~ 1 1
    execute if score @s ui_hpart matches 102 run playsound entity.generic.explode neutral @a ~ ~ ~ 1 1
    execute if score @s ui_hpart matches 103 run playsound minecraft:item.trident.hit neutral @a ~ ~ ~ 1 0.5
    execute if score @s ui_hpart matches 104 run playsound minecraft:block.stone.break neutral @a ~ ~ ~ 1 0.5

# ヒットパーティクル
    execute if score @s ui_hpart matches 1 run particle explosion ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_hpart matches 1 run particle flame ~ ~ ~ 0 0 0 0.25 10 force
    execute if score @s ui_hpart matches 2 run particle dust 0.5 1 1 1 ~ ~ ~ 0.3 0.3 0.3 0 10 force
    execute if score @s ui_hpart matches 2 run particle block ice ~ ~ ~ 0.3 0.3 0.3 0 10 force
    execute if score @s ui_hpart matches 3 run particle dust 1 1 0.5 1 ~ ~ ~ 0.5 0.5 0.5 0 10 force
    execute if score @s ui_hpart matches 3 run particle block gold_block ~ ~ ~ 0.3 0.3 0.3 0 10 force
    execute if score @s ui_hpart matches 5 run particle crit ~ ~ ~ 0 0 0 0.8 5 force
    execute if score @s ui_hpart matches 101 run particle explosion ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_hpart matches 102 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_hpart matches 102 run particle cloud ~ ~ ~ 1 1 1 0.5 20 force
    execute if score @s ui_hpart matches 103 run particle explosion ~ ~ ~ 0 0 0 0 1 force

# その他
    execute if score @s ui_hpart matches 4 run summon creeper ~ ~ ~ {ExplosionRadius:3,ignited:1b,Fuse:0,CustomName:'{"text":"魔法"}'}
    execute if score @s ui_hpart matches 101 run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 air replace #minecraft:terracotta
    execute if score @s ui_hpart matches 102 run fill ~-2 ~-1 ~-1 ~2 ~1 ~1 air replace #minecraft:terracotta
    execute if score @s ui_hpart matches 102 run fill ~-1 ~-2 ~-1 ~1 ~2 ~1 air replace #minecraft:terracotta
    execute if score @s ui_hpart matches 102 run fill ~-1 ~-1 ~-2 ~1 ~1 ~2 air replace #minecraft:terracotta
    execute if score @s ui_hpart matches 103 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #minecraft:terracotta
    execute if score @s ui_hpart matches 104 positioned ^ ^ ^0.5 if block ~ ~ ~ #minecraft:terracotta if block ~ ~1 ~ #ui:nocol run clone ~ ~ ~ ~ ~ ~ ~ ~1 ~ masked force
    execute if score @s ui_hpart matches 105 positioned ^ ^ ^0.5 if block ~ ~ ~ #minecraft:terracotta run function ui:common/projectile/legacy/killeffect/105
    execute if score @s ui_hpart matches 106 positioned ^ ^ ^0.5 if block ~ ~ ~ #minecraft:terracotta run function ui:common/projectile/legacy/killeffect/106

# キル
    scoreboard players reset @s
    kill @s
