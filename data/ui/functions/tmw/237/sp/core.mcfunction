# スペシャルウェポン発動
execute if score $sptype ui_temp matches 101..200 run function ui:tmw/237/sp/here
execute if score $sptype ui_temp matches 201..300 run function ui:tmw/237/sp/throw
execute if score $sptype ui_temp matches 301..400 run function ui:tmw/237/sp/weapon

# 何発動したの？
execute if score $sptype ui_temp matches 101 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"ノヴァ","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 102 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"スーパースター","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 103 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"ボムラッシュ","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 104 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"インクリメント","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 105 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"レーダー","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 201 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"トルネード","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]
execute if score $sptype ui_temp matches 301 run tellraw @a [{"selector":"@s"},{"text":"が","color":"white"},{"text":"[","color":"gray"},{"text":"スーパーショット","color":"gold"},{"text":"]","color":"gray"},{"text":"を発動しました！","color":"white"}]

# スペシャルタイムをセット
scoreboard players operation $sptime ui_temp = $sptime.max ui_temp

# インクを最大値まで回復し耐久バーに反映
scoreboard players operation $ink ui_temp = $ink.max ui_temp

# 塗りPをリセット
scoreboard players set @s ui_paint 0
scoreboard players set $changed ui_temp 1