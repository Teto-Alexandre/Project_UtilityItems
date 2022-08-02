# ガチキング用の設定,kingを付与する
scoreboard players set $amp ui_temp 1
scoreboard players set $changed ui_temp 1

#
execute if score $team ui_temp matches 1 run tellraw @a [{"selector":"@s"},{"text":"が","color":"gray"},{"text":"青チーム","color":"aqua"},{"text":"のキングです","color":"gray"}]
execute if score $team ui_temp matches 2 run tellraw @a [{"selector":"@s"},{"text":"が","color":"gray"},{"text":"赤チーム","color":"light_purple"},{"text":"のキングです","color":"gray"}]

# タグ消し
tag @s remove tmw_237_tag_king