# クールタイム取得
execute store result score $ct ui_temp run data get storage ui:gun temp.SPCT

# スペシャルウェポン発動
execute if score $sptype ui_temp matches 101..200 run function ui:tmw/237/sp/throw
execute if score $sptype ui_temp matches 201..300 run function ui:tmw/237/sp/here
execute if score $sptype ui_temp matches 301..400 at @s run function ui:tmw/237/sp/static
execute if score $sptype ui_temp matches 401..500 at @s run function ui:tmw/237/sp/weapon

# 何発動したの？
execute if score $sptype ui_temp matches 151 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"トルネード","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 152 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"アメフラシ","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 251 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"ノヴァ","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 252 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"スーパースター","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 253 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"ボムラッシュ","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 254 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"インクリメント","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 255 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"レーダー","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 256 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"スーパーチャクチ","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 257 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"サヴァイブ","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 351 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"メガホンレーザー","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 451 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"スーパーショット","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 452 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"マルチミサイル","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 453 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"トライアングル","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 454 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"ハイドロポンプ","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 455 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"ジェットパック","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]

# スペシャルタイムをセット
scoreboard players operation $sptime ui_temp = $sptime.max ui_temp

# インクを最大値まで回復し耐久バーに反映
scoreboard players operation $ink ui_temp = $ink.max ui_temp
execute store result score $cooltime ui_temp run time query gametime
scoreboard players operation $cooltime ui_temp += $ct ui_temp

# 塗りPをリセット
scoreboard players set @s ui_paint 0
scoreboard players set $changed ui_temp 1