# ロボボム

# 最初idがないなら生成
    execute unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id

# idを共有
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id

# 同idにタグ付与
    execute as @e if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_obj

# 常時実行
    execute if score @s ui_uses matches 2 run playsound block.lever.click player @a ~ ~ ~ 1 0.9 0
    execute if score @s ui_uses matches 20 run scoreboard players set @s ui_is 100
    execute if score @s ui_uses matches 20 run playsound block.beacon.deactivate player @a ~ ~ ~ 2 2 0
    #execute if score @s ui_is matches 1.. run teleport @s ~ ~0.5 ~ ~ ~
    execute if score @s ui_is matches 1.. if score $team ui_temp matches 1 at @e[tag=ui_temp_obj,tag=tmw_237_sub_113_1] run particle dust 0.5 1 1 3 ~ ~0.5 ~ 0 0 0 0 1 force
    execute if score @s ui_is matches 1.. if score $team ui_temp matches 2 at @e[tag=ui_temp_obj,tag=tmw_237_sub_113_1] run particle dust 1 0.5 1 3 ~ ~0.5 ~ 0 0 0 0 1 force
    execute if score @s ui_is matches 1.. if score $team ui_temp matches 3 at @e[tag=ui_temp_obj,tag=tmw_237_sub_113_1] run particle dust 1 1 0.5 3 ~ ~0.5 ~ 0 0 0 0 1 force
    execute if score @s ui_is matches 1.. if score $team ui_temp matches 4 at @e[tag=ui_temp_obj,tag=tmw_237_sub_113_1] run particle dust 0.5 1 0.5 3 ~ ~0.5 ~ 0 0 0 0 1 force
    execute if entity @s[tag=ui_237_sub_stop] if score @s ui_is matches ..20 run data merge entity @e[tag=ui_temp_obj,tag=tmw_237_sub_113_1,limit=1] {NoAI:1b}
    execute if entity @s[tag=ui_237_sub_stop] if score @s ui_is matches 10 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.8 0
    execute if entity @s[tag=ui_237_sub_stop] if score @s ui_is matches 12 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.8 0
    execute if entity @s[tag=ui_237_sub_stop] if score @s ui_is matches 14 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.8 0
    execute if entity @s[tag=ui_237_sub_stop] if score @s ui_is matches 16 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.8 0
    execute if entity @s[tag=ui_237_sub_stop] if score @s ui_is matches 18 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.8 0
    execute if entity @s[tag=ui_237_sub_stop] if score @s ui_is matches 20 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.8 0
    execute if entity @s[tag=ui_237_sub_stop] if score @s ui_is matches ..0 run tag @s add ui_237_sub_explode

# 処理終了
    execute if score @s ui_uses matches 20 run tag @s add ui_237_sub_stop
    execute as @s[tag=ui_237_sub_stop] run scoreboard players remove @s ui_is 1
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0001d,0.0d],Item:{id:"gray_stained_glass_pane",tag:{CustomModelData:120001}}}
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run summon husk ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_113_1","tmw_237_sub_mult","ui_temp_obj","tds_nolog","ui_temp_team"],IsBaby:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000,ShowParticles:false}],DeathLootTable:"none",Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.attack_damage",Base:0},{Name:"generic.follow_range",Base:12}],Health:1000f,Silent:1}
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run tag @s add ui_237_sub_first
    #idコピー
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_id = $id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_obj_id = $obj_id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_team = $team ui_temp
    execute as @e[tag=ui_temp_this] if score $team ui_temp matches 1 run team join blue @s
    execute as @e[tag=ui_temp_this] if score $team ui_temp matches 2 run team join red @s
    execute as @e[tag=ui_temp_this] if score $team ui_temp matches 3 run team join yellow @s
    execute as @e[tag=ui_temp_this] if score $team ui_temp matches 4 run team join green @s
    tag @e[tag=ui_temp_this] remove ui_temp_this
    #ダメージ計算
    execute if entity @s[tag=ui_237_sub_first] store result score $temp ui_temp run data get entity @e[tag=ui_temp_obj,tag=tmw_237_sub_113_1,limit=1] Health 10
    execute if entity @s[tag=ui_237_sub_first] run scoreboard players remove $temp ui_temp 10000
    execute if entity @s[tag=ui_237_sub_first] run scoreboard players operation @s ui_is += $temp ui_temp
    execute if entity @s[tag=ui_237_sub_first] run data merge entity @e[tag=ui_temp_obj,tag=tmw_237_sub_113_1,limit=1] {Health:1000f}

#
    execute if score @s ui_is matches 22.. at @e[tag=ui_temp_obj,tag=tmw_237_sub_113_1] if entity @e[distance=..1.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run scoreboard players set @s ui_is 21

# 処理終了（消える）
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/113/end
    tag @e[tag=ui_temp_obj] remove ui_temp_obj