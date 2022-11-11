# シールド

# 最初idがないなら生成
    execute unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id

# idを共有
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id

# 同idにタグ付与
    execute as @e if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_obj

# 常時実行
    execute if score @s ui_uses matches 2 run playsound block.lever.click player @a ~ ~ ~ 1 0.9 0
    execute if score @s ui_uses matches 20 run scoreboard players set @s ui_is 600
    execute if score @s ui_uses matches 20 run playsound block.end_portal_frame.fill player @a ~ ~ ~ 2 0.8 0
    #execute if score @s ui_is matches 1.. run teleport @s ~ ~0.5 ~ ~ ~
    execute if score @s ui_is matches 1.. if score $team ui_temp matches 1 run particle dust 0.5 1 1 3 ~ ~2.2 ~ 0.5 1 0.5 0 1 force
    execute if score @s ui_is matches 1.. if score $team ui_temp matches 2 run particle dust 1 0.5 1 3 ~ ~2.2 ~ 0.5 1 0.5 0 1 force
    execute if score @s ui_is matches 1.. if score $team ui_temp matches 3 run particle dust 1 1 0.5 3 ~ ~2.2 ~ 0.5 1 0.5 0 1 force
    execute if score @s ui_is matches 1.. if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 3 ~ ~2.2 ~ 0.5 1 0.5 0 1 force
    execute if entity @s[tag=ui_256_sub_stop] if score @s ui_is matches ..0 run tag @s add ui_256_sub_explode
    execute if score $team ui_temp matches 4 run data modify storage ui:temp Name set value '{"text":"インスタントシールド","color":"green"}'
    scoreboard players set $damage_type ui_temp 1
    scoreboard players set $damage ui_temp 20
    scoreboard players operation $temp2 ui_temp = @s ui_is
    scoreboard players operation $temp2 ui_temp %= #4 ui_num
    execute if score $temp2 ui_temp matches 0 positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0,dy=3,dz=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/256/projectile/hit.marker

# 処理終了
    execute if score @s ui_uses matches 20 run tag @s add ui_256_sub_stop
    execute as @s[tag=ui_256_sub_stop] run scoreboard players remove @s ui_is 1
    execute as @s[tag=ui_256_sub_stop,tag=!ui_256_sub_first] run data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0001d,0.0d]}
    execute as @s[tag=ui_256_sub_stop,tag=!ui_256_sub_first] run summon iron_golem ~ ~ ~ {Tags:["ui_temp_this","tmw_256_sub_110_1","tmw_256_sub_mult","ui_temp_obj","tds_nolog","ui_temp_team"],NoAI:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000,ShowParticles:false}],DeathLootTable:"none",Attributes:[{Name:"generic.max_health",Base:1000}],Health:1000f,Silent:1}
    execute as @s[tag=ui_256_sub_stop,tag=!ui_256_sub_first] run summon iron_golem ~ ~2 ~ {Tags:["ui_temp_this","tmw_256_sub_110_2","ui_temp_obj","tds_nolog","ui_temp_team"],NoAI:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000,ShowParticles:false}],DeathLootTable:"none",Attributes:[{Name:"generic.max_health",Base:1000}],Health:1000f,Silent:1}
    execute as @s[tag=ui_256_sub_stop,tag=!ui_256_sub_first] run tag @s add ui_256_sub_first
    #idコピー
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_id = $id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_obj_id = $obj_id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_team = $team ui_temp
    #設置数上限デストロイ
    scoreboard players set $count ui_temp 0
    execute as @e[tag=tmw_256_sub_mult] if score @s ui_id = $id ui_temp run scoreboard players add $count ui_temp 1
    execute if score $count ui_temp matches 4.. run function ui:tmw/256/sub/explosive/mult
    tag @e[tag=ui_temp_this] remove ui_temp_this
    #ダメージ計算
    execute if entity @s[tag=ui_256_sub_first] store result score $temp ui_temp run data get entity @e[tag=ui_temp_obj,tag=tmw_256_sub_110_1,limit=1] Health 10
    execute if entity @s[tag=ui_256_sub_first] run scoreboard players remove $temp ui_temp 20000
    execute if entity @s[tag=ui_256_sub_first] run scoreboard players operation @s ui_is += $temp ui_temp
    execute if entity @s[tag=ui_256_sub_first] store result score $temp ui_temp run data get entity @e[tag=ui_temp_obj,tag=tmw_256_sub_110_2,limit=1] Health 10
    execute if entity @s[tag=ui_256_sub_first] run scoreboard players operation @s ui_is += $temp ui_temp
    execute if entity @s[tag=ui_256_sub_first] run data merge entity @e[tag=ui_temp_obj,tag=tmw_256_sub_110_1,limit=1] {Health:1000f}
    execute if entity @s[tag=ui_256_sub_first] run data merge entity @e[tag=ui_temp_obj,tag=tmw_256_sub_110_2,limit=1] {Health:1000f}

# 処理終了（消える）
    execute if entity @s[tag=ui_256_sub_explode] run function ui:tmw/256/sub/explosive/110/end
    tag @e[tag=ui_temp_obj] remove ui_temp_obj