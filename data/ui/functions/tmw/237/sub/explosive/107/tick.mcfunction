# ボルテックス

#>
# ショートカット用
# @private
#declare tag tmw_237_sub_107
#declare tag ui_temp_obj

# 最初idがないなら生成
    execute unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id
    #execute as @e[type=!#ui:notmob,distance=..5] if score @s ui_team = $team ui_temp run effect give @s regeneration 1 5 false

# idを共有
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id

# 同idにタグ付与
    execute as @e if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_obj

# 設置数上限デストロイ
    scoreboard players set $count ui_temp 0
    execute as @e[tag=tmw_237_sub] if score @s ui_id = $id ui_temp run scoreboard players add $count ui_temp 1
    execute if score $count ui_temp matches 2.. run function ui:tmw/237/sub/explosive/mult.ex

# 出現からの時間に応じて同じidのビットを追加
    #外側
    execute if score @s ui_uses matches 10 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_107_1","tmw_237_sub_107_2","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    execute if score @s ui_uses matches 10 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_107_1","tmw_237_sub_107_1_1","tmw_237_sub_107_2_1","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    execute if score @s ui_uses matches 10 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_107_1","tmw_237_sub_107_1_1","tmw_237_sub_107_2_2","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    #内側
    execute if score @s ui_uses matches 30 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_107_1","tmw_237_sub_107_3","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    execute if score @s ui_uses matches 30 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_107_1","tmw_237_sub_107_1_1","tmw_237_sub_107_3_1","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    execute if score @s ui_uses matches 30 run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_107_1","tmw_237_sub_107_1_1","tmw_237_sub_107_3_2","ui_temp_obj"],Invisible:1b,NoGravity:1b,Marker:1b}
    #idコピー
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_id = $id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_obj_id = $obj_id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_team = $team ui_temp
    tag @e[tag=ui_temp_this] remove ui_temp_this

# ビットを配列
    execute at @s as @e[tag=ui_temp_obj,tag=tmw_237_sub_107_2] rotated as @s run teleport @s ~ ~ ~ ~ ~
    execute at @s as @e[tag=ui_temp_obj,tag=tmw_237_sub_107_3] rotated as @s run teleport @s ~ ~ ~ ~ ~
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_107_2] at @s run teleport @s ~ ~ ~ ~7 ~
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_107_3] at @s run teleport @s ~ ~ ~ ~12 ~
    execute at @e[tag=ui_temp_obj,tag=tmw_237_sub_107_2] run teleport @e[tag=ui_temp_obj,tag=tmw_237_sub_107_2_1] ^ ^ ^-0.5 ~ ~
    execute at @e[tag=ui_temp_obj,tag=tmw_237_sub_107_2] run teleport @e[tag=ui_temp_obj,tag=tmw_237_sub_107_2_2] ^ ^ ^0.5 ~-180 ~
    execute at @e[tag=ui_temp_obj,tag=tmw_237_sub_107_3] run teleport @e[tag=ui_temp_obj,tag=tmw_237_sub_107_3_1] ^ ^ ^-2 ~ ~
    execute at @e[tag=ui_temp_obj,tag=tmw_237_sub_107_3] run teleport @e[tag=ui_temp_obj,tag=tmw_237_sub_107_3_2] ^ ^ ^2 ~-180 ~
    scoreboard players operation $temp ui_temp = @s ui_uses
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_107_1_1] run function ui:tmw/237/sub/explosive/107/tick.rotator

#弾
    execute if score @s ui_uses matches 10..80 as @e[tag=ui_temp_obj,tag=tmw_237_sub_107_1_1] at @s run function ui:tmw/237/sub/explosive/107/tick.line

# メイン
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_107_1] if score @s ui_team matches 1 store result score $paint ui_temp at @s run fill ~ ~-2 ~ ~ ~2 ~ light_blue_wool replace #ui:wools
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_107_1] if score @s ui_team matches 2 store result score $paint ui_temp at @s run fill ~ ~-2 ~ ~ ~2 ~ pink_wool replace #ui:wools
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_107_1] if score @s ui_team matches 3 store result score $paint ui_temp at @s run fill ~ ~-2 ~ ~ ~2 ~ yellow_wool replace #ui:wools
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_107_1] if score @s ui_team matches 4 store result score $paint ui_temp at @s run fill ~ ~-2 ~ ~ ~2 ~ lime_wool replace #ui:wools
    execute if entity @s[tag=!tmw237_sub_nopoint] as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $paint ui_temp

# 死ぬ(同じidの奴らまとめて)
    execute if score @s ui_uses matches 80.. run tag @s add ui_237_sub_explode
    execute if entity @s[tag=ui_237_sub_explode] run kill @e[tag=ui_temp_obj]
    tag @e[tag=ui_temp_obj] remove ui_temp_obj