# 必要データ収集
data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw.gun
execute store result score $color ui_temp run scoreboard players get @s ui_team
execute store result score $ink ui_temp run data get storage ui:gun temp.now.Ink
scoreboard players set $changed ui_temp 0

# 検知範囲拡大
#tag @s[tag=tmw_drop_s] add tmw_drop_n
#tag @s[tag=tmw_oh_s] add tmw_oh_n

# コア設置
execute as @s[tag=tmw_oh_n] at @s run function ui:tmw/238/place.core

# 逆変換
execute if score $changed ui_temp matches 1 run function ui:tmw/238/changed

# 一時的ストレージクリア
data remove storage ui:gun temp