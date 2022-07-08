# インクタンクを最大にするタグ
scoreboard players operation $ink ui_temp = $ink.max ui_temp
scoreboard players set $changed ui_temp 1

# タグ消し
tag @s remove tmw_237_tag_inkfill