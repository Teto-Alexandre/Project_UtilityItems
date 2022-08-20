#> ui:tmw/237/projectile/tick
#
# 「飛び道具コモン」で召喚された「防具立て」を管理
#
# @public

# キルログを宣言
scoreboard players set $deathmessage ui_temp 0
execute if entity @s[tag=ui_refd,tag=!tmw_237_noref] run scoreboard players set $deathmessage ui_temp 2
execute if entity @s[tag=tmw_237_deathmessage_14] run scoreboard players set $deathmessage ui_temp 1

#射程うんぬん
scoreboard players operation @s ui_temp = @s ui_bm
scoreboard players operation @s ui_temp += @s ui_bm_temp
scoreboard players operation $rangetype ui_temp = @s ui_gpc

#攻撃インストール
scoreboard players operation $damage ui_temp = @s ui_dmg
scoreboard players operation $damage_type ui_temp = @s ui_bdt

#idを共有
scoreboard players operation $id ui_temp = @s ui_id

#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
scoreboard players operation $team ui_temp = @s ui_team
execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

#重力補正
execute if score $rangetype ui_temp matches 2..3 at @s run function ui:tmw/237/projectile/gravity

#tick毎ループ
execute at @s[scores={ui_temp=10..}] run function ui:tmw/237/projectile/move
scoreboard players operation @s ui_bm_temp = @s ui_temp
tag @s[tag=ui_temp_col] remove ui_temp_col

#キル条件
execute if score @s ui_br_temp >= @s ui_br run function ui:tmw/237/projectile/end

#一時タグ削除
tag @e[tag=ui_temp_team] remove ui_temp_team