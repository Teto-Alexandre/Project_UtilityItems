#射程うんぬん
scoreboard players operation @s ui_temp = @s ui_bm

#id1を共有
scoreboard players operation $id ui_temp = @s ui_id

#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
scoreboard players operation $temp ui_temp = @s ui_team
execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $temp ui_temp run tag @s add ui_temp_team

#tick毎弾移動ループ
function ui:tmw/305/proj/move
tag @s[tag=ui_temp_col] remove ui_temp_col

#キル条件
kill @s[scores={ui_br=..0}]
kill @s[tag=ui_305_nocol]

#一時タグ削除
tag @e[tag=ui_temp_team] remove ui_temp_team