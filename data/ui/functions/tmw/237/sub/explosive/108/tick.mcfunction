# トルネードもどき

#>
# ショートカット用
# @private
#declare tag tmw_237_sub_108
#declare tag ui_temp_obj

# 最初idがないなら生成
    execute unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id

# idを共有
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id

# 同idにタグ付与
    execute as @e if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_obj

# 出現からの時間に応じて同じidのビットを追加
    #外側
    execute if score @s ui_uses matches 10 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_108_1","tmw_237_sub_108_2","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    execute if score @s ui_uses matches 10 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_108_1","tmw_237_sub_108_1_1","tmw_237_sub_108_2_1","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    execute if score @s ui_uses matches 10 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_108_1","tmw_237_sub_108_1_1","tmw_237_sub_108_2_2","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    #内側
    execute if score @s ui_uses matches 40 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_108_1","tmw_237_sub_108_3","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    execute if score @s ui_uses matches 40 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_108_1","tmw_237_sub_108_1_1","tmw_237_sub_108_3_1","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    execute if score @s ui_uses matches 40 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_108_1","tmw_237_sub_108_1_1","tmw_237_sub_108_3_2","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    #idコピー
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_id = $id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_obj_id = $obj_id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_team = $team ui_temp
    tag @e[tag=ui_temp_this] remove ui_temp_this

# ビットを配列
    execute at @s as @e[tag=ui_temp_obj,tag=tmw_237_sub_108_2] rotated as @s run teleport @s ~ ~ ~ ~ ~
    execute at @s as @e[tag=ui_temp_obj,tag=tmw_237_sub_108_3] rotated as @s run teleport @s ~ ~ ~ ~ ~
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_108_2] at @s run teleport @s ~ ~ ~ ~17 ~
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_108_3] at @s run teleport @s ~ ~ ~ ~7 ~
    execute at @e[tag=ui_temp_obj,tag=tmw_237_sub_108_2] run teleport @e[tag=ui_temp_obj,tag=tmw_237_sub_108_2_1] ^ ^ ^-0.5 ~ ~
    execute at @e[tag=ui_temp_obj,tag=tmw_237_sub_108_2] run teleport @e[tag=ui_temp_obj,tag=tmw_237_sub_108_2_2] ^ ^ ^0.5 ~-180 ~
    execute at @e[tag=ui_temp_obj,tag=tmw_237_sub_108_3] run teleport @e[tag=ui_temp_obj,tag=tmw_237_sub_108_3_1] ^ ^ ^-3 ~ ~
    execute at @e[tag=ui_temp_obj,tag=tmw_237_sub_108_3] run teleport @e[tag=ui_temp_obj,tag=tmw_237_sub_108_3_2] ^ ^ ^3 ~-180 ~
    scoreboard players operation $temp ui_temp = @s ui_uses
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_108_1_1] run function ui:tmw/237/sub/explosive/108/tick.rotator

# 弾
    execute if score @s ui_uses matches 10..100 as @e[tag=ui_temp_obj,tag=tmw_237_sub_108_1_1] at @s run function ui:tmw/237/sub/explosive/108/tick.line

# メイン
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_108_1] if score @s ui_team matches 1 at @s run fill ~ ~-5 ~ ~ ~10 ~ light_blue_wool replace #ui:wools
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_108_1] if score @s ui_team matches 2 at @s run fill ~ ~-5 ~ ~ ~10 ~ pink_wool replace #ui:wools
    execute if score @s ui_uses matches 1..20 if score @s ui_team matches 1 at @s run particle block blue_wool ~ ~8 ~ 0 8 0 0 10 force
    execute if score @s ui_uses matches 1..20 if score @s ui_team matches 1 at @s run particle dust_color_transition 0.5 1 1 2.5 0 0.5 0.5 ~ ~8 ~ 0 8 0 0 2 force
    execute if score @s ui_uses matches 21..40 if score @s ui_team matches 1 at @s run particle block blue_wool ~ ~10 ~ 0.3 10 0.3 0 20 force
    execute if score @s ui_uses matches 21..40 if score @s ui_team matches 1 at @s run particle dust_color_transition 0.5 1 1 2.5 0 0.5 0.5 ~ ~10 ~ 1.5 10 1.5 0 5 force
    execute if score @s ui_uses matches 41..70 if score @s ui_team matches 1 at @s run particle block blue_wool ~ ~13 ~ 0.6 13 0.6 0 30 force
    execute if score @s ui_uses matches 41..70 if score @s ui_team matches 1 at @s run particle dust_color_transition 0.5 1 1 2.5 0 0.5 0.5 ~ ~10 ~ 2.5 10 2.5 0 10 force
    execute if score @s ui_uses matches 71..100 if score @s ui_team matches 1 at @s run particle block blue_wool ~ ~17 ~ 1 17 1 0 40 force
    execute if score @s ui_uses matches 71..100 if score @s ui_team matches 1 at @s run particle dust_color_transition 0.5 1 1 2.5 0 0.5 0.5 ~ ~10 ~ 3.5 10 3.5 0 15 force
    execute if score @s ui_uses matches 1..20 if score @s ui_team matches 2 at @s run particle block red_wool ~ ~8 ~ 0 8 0 0 10 force
    execute if score @s ui_uses matches 1..20 if score @s ui_team matches 2 at @s run particle dust_color_transition 1 0.5 1 2.5 0.5 0 0.5 ~ ~8 ~ 0 8 0 0 2 force
    execute if score @s ui_uses matches 21..40 if score @s ui_team matches 2 at @s run particle block red_wool ~ ~10 ~ 0.3 10 0.3 0 20 force
    execute if score @s ui_uses matches 21..40 if score @s ui_team matches 2 at @s run particle dust_color_transition 1 0.5 1 2.5 0.5 0 0.5 ~ ~10 ~ 1.5 10 1.5 0 5 force
    execute if score @s ui_uses matches 41..70 if score @s ui_team matches 2 at @s run particle block red_wool ~ ~13 ~ 0.6 13 0.6 0 30 force
    execute if score @s ui_uses matches 41..70 if score @s ui_team matches 2 at @s run particle dust_color_transition 1 0.5 1 2.5 0.5 0 0.5 ~ ~10 ~ 2.5 10 2.5 0 10 force
    execute if score @s ui_uses matches 71..100 if score @s ui_team matches 2 at @s run particle block red_wool ~ ~17 ~ 1 17 1 0 40 force
    execute if score @s ui_uses matches 71..100 if score @s ui_team matches 2 at @s run particle dust_color_transition 1 0.5 1 2.5 0.5 0 0.5 ~ ~10 ~ 3.5 10 3.5 0 15 force

# チームを認識
    execute as @e[type=!#ui:notmob] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team
    scoreboard players set @s ui_dmg 35
    scoreboard players operation $temp ui_temp = @s ui_uses
    scoreboard players operation $temp ui_temp /= #5 ui_num
    scoreboard players operation @s ui_dmg -= $temp ui_temp
    scoreboard players operation $temp2 ui_temp = @s ui_uses
    scoreboard players operation $temp2 ui_temp %= #3 ui_num

# 当たり判定
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 10..19 at @e[distance=..2,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/108/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 20..29 at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/108/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 30..39 at @e[distance=..4,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/108/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 40..49 at @e[distance=..5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/108/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 50..59 at @e[distance=..6,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/108/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 60..69 at @e[distance=..7,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/108/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 70..79 at @e[distance=..8,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/108/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 80..89 at @e[distance=..9,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/108/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 90..100 at @e[distance=..10,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/108/hit
    execute if score @s ui_uses matches 100 run scoreboard players set @s ui_dmg 30
    execute if score @s ui_uses matches 100 at @e[distance=..11,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/108/hit

# 音響
    execute if score @s ui_uses matches 1 run playsound block.redstone_torch.burnout player @a ~ ~ ~ 1.2 0.8 0
    execute if score @s ui_uses matches 1 run playsound item.elytra.flying player @a ~ ~ ~ 0.8 1.8 0
    execute if score @s ui_uses matches 1 run playsound entity.minecart.inside.underwater player @a ~ ~ ~ 1.5 1.2 0
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 1..80 run playsound block.honey_block.step player @a ~ ~ ~ 1 1.2 0

# チーム識別解除
    tag @e[tag=ui_temp_team] remove ui_temp_team

# 死ぬ(同じidの奴らまとめて)
    execute if score @s ui_uses matches 100.. run kill @e[tag=ui_temp_obj]
    tag @e[tag=ui_temp_obj] remove ui_temp_obj