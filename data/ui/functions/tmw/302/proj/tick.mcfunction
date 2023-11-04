#射程うんぬん
scoreboard players operation @s ui_temp = @s ui_bm 

#id1を共有
scoreboard players operation $id ui_temp = @s ui_id

#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
scoreboard players operation $team ui_temp = @s ui_team
function ui:common/tag_temp_team/

#tick毎弾移動ループ
function ui:tmw/302/proj/move

#キル条件
kill @s[scores={ui_br=..0}]
kill @s[tag=ui_302_nocol]
