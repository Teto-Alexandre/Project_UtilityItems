# 自動発動 - インク回復

# クールタイム取得
scoreboard players set $ct ui_temp 0

# スペシャルウェポン発動
scoreboard players set $activator ui_temp 258
 function ui:tmw/237/activator/here

# 何発動したの？
tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"リゲイン","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]

# スペシャルタイムをセット
scoreboard players set $sptime ui_temp 0

# インクを最大値まで回復し耐久バーに反映
scoreboard players operation $ink ui_temp = $ink.max ui_temp
execute in overworld store result score $cooltime ui_temp run time query gametime
scoreboard players operation $cooltime ui_temp += $ct ui_temp

# 塗りPをリセット
scoreboard players set @s ui_paint 0

#
scoreboard players set $changed ui_temp 1