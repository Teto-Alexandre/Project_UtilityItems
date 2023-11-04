# トルネードもどき

#>
# ショートカット用
# @private
#declare tag tmw_237_sub_151
#declare tag ui_temp_obj

# 最初idがないなら生成
    execute unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id

# idを共有
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id

# 同idにタグ付与
    execute as @e if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_obj

# 出現からの時間に応じて同じidのビットを追加
    #外側
    execute if score @s ui_uses matches 10 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_151_1","tmw_237_sub_151_2","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    execute if score @s ui_uses matches 10 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_151_1","tmw_237_sub_151_1_1","tmw_237_sub_151_2_1","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    execute if score @s ui_uses matches 10 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_151_1","tmw_237_sub_151_1_1","tmw_237_sub_151_2_2","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    #内側
    execute if score @s ui_uses matches 40 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_151_1","tmw_237_sub_151_3","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    execute if score @s ui_uses matches 40 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_151_1","tmw_237_sub_151_1_1","tmw_237_sub_151_3_1","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    execute if score @s ui_uses matches 40 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_151_1","tmw_237_sub_151_1_1","tmw_237_sub_151_3_2","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    #idコピー
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_id = $id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_obj_id = $obj_id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_team = $team ui_temp
    tag @e[tag=ui_temp_this] remove ui_temp_this

# ビットを配列
    execute at @s as @e[tag=ui_temp_obj,tag=tmw_237_sub_151_2] rotated as @s run teleport @s ~ ~ ~ ~ ~
    execute at @s as @e[tag=ui_temp_obj,tag=tmw_237_sub_151_3] rotated as @s run teleport @s ~ ~ ~ ~ ~
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_151_2] at @s run teleport @s ~ ~ ~ ~17 ~
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_151_3] at @s run teleport @s ~ ~ ~ ~7 ~
    execute at @e[tag=ui_temp_obj,tag=tmw_237_sub_151_2] run teleport @e[tag=ui_temp_obj,tag=tmw_237_sub_151_2_1] ^ ^ ^-0.5 ~ ~
    execute at @e[tag=ui_temp_obj,tag=tmw_237_sub_151_2] run teleport @e[tag=ui_temp_obj,tag=tmw_237_sub_151_2_2] ^ ^ ^0.5 ~-180 ~
    execute at @e[tag=ui_temp_obj,tag=tmw_237_sub_151_3] run teleport @e[tag=ui_temp_obj,tag=tmw_237_sub_151_3_1] ^ ^ ^-3 ~ ~
    execute at @e[tag=ui_temp_obj,tag=tmw_237_sub_151_3] run teleport @e[tag=ui_temp_obj,tag=tmw_237_sub_151_3_2] ^ ^ ^3 ~-180 ~
    scoreboard players operation $temp ui_temp = @s ui_uses
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_151_1_1] run function ui:tmw/237/sub/explosive/151/tick.rotator

# 弾
    execute if score @s ui_uses matches 10..100 as @e[tag=ui_temp_obj,tag=tmw_237_sub_151_1_1] at @s run function ui:tmw/237/sub/explosive/151/tick.line

# メイン
    execute if score @s ui_team matches 1 run function ui:tmw/237/sub/explosive/151/1
    execute if score @s ui_team matches 2 run function ui:tmw/237/sub/explosive/151/2
    execute if score @s ui_team matches 3 run function ui:tmw/237/sub/explosive/151/3
    execute if score @s ui_team matches 4 run function ui:tmw/237/sub/explosive/151/4

# チームを認識
    function ui:common/tag_temp_team/
    scoreboard players set $damage ui_temp 35
    scoreboard players operation $temp ui_temp = @s ui_uses
    scoreboard players operation $temp ui_temp /= #5 ui_num
    scoreboard players operation $damage ui_temp -= $temp ui_temp
    scoreboard players operation $temp2 ui_temp = @s ui_uses
    scoreboard players operation $temp2 ui_temp %= #3 ui_num

# 当たり判定
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 10..19 at @e[distance=..2,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/151/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 20..29 at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/151/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 30..39 at @e[distance=..4,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/151/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 40..49 at @e[distance=..5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/151/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 50..59 at @e[distance=..6,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/151/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 60..69 at @e[distance=..7,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/151/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 70..79 at @e[distance=..8,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/151/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 80..89 at @e[distance=..9,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/151/hit
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 90..99 at @e[distance=..10,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/151/hit
    execute if score @s ui_uses matches 100 run scoreboard players set $damage ui_temp 30
    execute if score @s ui_uses matches 100 at @e[distance=..11,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/sub/explosive/151/hit

# ボム即爆
    execute if score @s ui_uses matches 10..19 as @e[distance=0.1..1,tag=tmw_237_sub] run tag @s add ui_237_sub_explode
    execute if score @s ui_uses matches 20..29 as @e[distance=0.1..2,tag=tmw_237_sub] run tag @s add ui_237_sub_explode
    execute if score @s ui_uses matches 30..39 as @e[distance=0.1..3,tag=tmw_237_sub] run tag @s add ui_237_sub_explode
    execute if score @s ui_uses matches 40..49 as @e[distance=0.1..4,tag=tmw_237_sub] run tag @s add ui_237_sub_explode
    execute if score @s ui_uses matches 50..59 as @e[distance=0.1..5,tag=tmw_237_sub] run tag @s add ui_237_sub_explode
    execute if score @s ui_uses matches 60..69 as @e[distance=0.1..6,tag=tmw_237_sub] run tag @s add ui_237_sub_explode
    execute if score @s ui_uses matches 70..79 as @e[distance=0.1..7,tag=tmw_237_sub] run tag @s add ui_237_sub_explode
    execute if score @s ui_uses matches 80..89 as @e[distance=0.1..8,tag=tmw_237_sub] run tag @s add ui_237_sub_explode
    execute if score @s ui_uses matches 90..100 as @e[distance=0.1..9,tag=tmw_237_sub] run tag @s add ui_237_sub_explode

# 音響
    execute if score @s ui_uses matches 2 run playsound block.redstone_torch.burnout player @a ~ ~ ~ 1.2 0.8 0
    execute if score @s ui_uses matches 2 run playsound item.elytra.flying player @a ~ ~ ~ 0.8 1.8 0
    execute if score @s ui_uses matches 2 run playsound entity.minecart.inside.underwater player @a ~ ~ ~ 1.5 1.2 0
    execute if score $temp2 ui_temp matches 0 if score @s ui_uses matches 2..80 run playsound block.honey_block.step player @a ~ ~ ~ 1 1.2 0

# 死ぬ(同じidの奴らまとめて)
    execute if score @s ui_uses matches 100.. run tag @s add ui_237_sub_explode
    execute if entity @s[tag=ui_237_sub_explode] run kill @e[tag=ui_temp_obj]
    tag @e[tag=ui_temp_obj] remove ui_temp_obj