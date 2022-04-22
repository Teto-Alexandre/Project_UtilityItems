# エンティティ判定依存のデメリット解消
    execute if score @s ui_id matches 1.. run tag @s add ui_temp
    execute if score @s ui_id matches 1.. run scoreboard players reset @e[scores={ui_idc=-214748348..}] ui_idc
    execute if score @s ui_id matches 1.. as @e[type=!#ui:unhurtable,scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
    execute if score @s ui_id matches 1.. as @e[type=!#ui:unhurtable,scores={ui_id=1..}] run scoreboard players operation @s ui_idc -= @e[tag=ui_temp] ui_id
    execute if score @s ui_id matches 1.. run tag @e[scores={ui_idc=0}] add ui_temp2
    execute if score @s ui_id matches 1.. run tag @s remove ui_temp

#ヒット音
    execute if score @s ui_hpart matches 0 run playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1 1
    execute if score @s ui_hpart matches 1 run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 0.8 1
    execute if score @s ui_hpart matches 2 run playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 0.5
    execute if score @s ui_hpart matches 3 run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 2
    
#ヒットパーティクル
    execute if score @s ui_hpart matches 1 run particle explosion ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_hpart matches 1 run particle flame ~ ~ ~ 0 0 0 0.25 10 force
    execute if score @s ui_hpart matches 2 run particle dust 0.5 1 1 1 ~ ~ ~ 0.3 0.3 0.3 0 10 force
    execute if score @s ui_hpart matches 2 run particle block ice ~ ~ ~ 0.3 0.3 0.3 0 10 force
    execute if score @s ui_hpart matches 3 run particle dust 1 1 0.5 1 ~ ~ ~ 0.5 0.5 0.5 0 10 force
    execute if score @s ui_hpart matches 3 run particle block gold_block ~ ~ ~ 0.3 0.3 0.3 0 10 force

# 命中処理
    summon marker ^ ^ ^-2 {Tags:["ui_temp_target"]}
    scoreboard players operation @e[type=!#ui:unhurtable,tag=!ui_unhurtable,tag=!ui_temp2,sort=nearest,limit=1] ui_bdt = @s ui_bdt
    execute as @e[type=!#ui:unhurtable,tag=!ui_unhurtable,tag=!ui_temp2,sort=nearest,limit=1] at @s run function ui:common/projectile/hit_ent
    tag @e[tag=ui_temp2] remove ui_temp2
    kill @e[tag=ui_temp_target]
    
# 消失
    function ui:common/projectile/kill