# インクタンクを最大にするタグ
scoreboard players add $ink ui_temp 250
scoreboard players operation $ink ui_temp < $ink.max ui_temp
scoreboard players set $changed ui_temp 1

# タグ消し
tag @s remove tmw_237_tag_ink250