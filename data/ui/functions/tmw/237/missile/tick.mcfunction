#> ui:tmw/237/missile/tick
#
# 「飛び道具コモン」で召喚された「防具立て」を管理
#
# @public

# キルログを宣言
scoreboard players set $deathmessage ui_temp 0
execute if entity @s[tag=ui_refd] run scoreboard players set $deathmessage ui_temp 2
execute if entity @s[tag=tmw_237_deathmessage_14] run scoreboard players set $deathmessage ui_temp 1

#これです
tag @s add ui_temp_this

#射程うんぬん
execute if score @s ui_is matches 40.. run scoreboard players operation @s ui_temp = @s ui_bm
execute if score @s ui_is matches 40.. run scoreboard players operation @s ui_temp += @s ui_bm_temp
scoreboard players add @s ui_is 1

#攻撃インストール
scoreboard players operation $damage ui_temp = @s ui_dmg
scoreboard players operation $damage_type ui_temp = @s ui_bdt

#idを共有
scoreboard players operation $id ui_temp = @s ui_id
scoreboard players operation $obj_id ui_temp = @s ui_gpc

#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
scoreboard players operation $team ui_temp = @s ui_team
execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

# 最初に発射元に発射エフェクトを出す
execute if score @s ui_is matches 1 run function ui:tmw/237/missile/particle_unit

# 誘導中ならターゲットマーカーを表示して少しターゲットに近づく
particle electric_spark ~ ~0.2 ~ 0.5 0 0 0 5 force
particle electric_spark ~ ~0.2 ~ 0 0 0.5 0 5 force
execute if score @s ui_is matches 40 run playsound entity.firework_rocket.launch player @a ~ ~ ~ 1 0.8 0
execute as @e[distance=..50,tag=!ui_temp_team,predicate=ui:load_unhurtable] if score @s ui_obj_id = $obj_id ui_temp at @e[tag=ui_temp_this] facing entity @s feet run teleport @e[tag=ui_temp_this] ^ ^ ^0.1

#tick毎ループ
execute at @s[scores={ui_temp=10..}] run function ui:tmw/237/missile/move
scoreboard players operation @s ui_bm_temp = @s ui_temp
tag @s[tag=ui_temp_col] remove ui_temp_col

#キル条件
execute as @s[scores={ui_br=..0}] run function ui:tmw/237/projectile/kill

#一時タグ削除
tag @e[tag=ui_temp_team] remove ui_temp_team
tag @s remove ui_temp_this