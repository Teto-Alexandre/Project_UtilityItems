# モードチェンジ用テスト

# 必要データ収集
data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw

execute store result score $type ui_temp run data get storage ui:gun temp.type
execute store result score $mode.max ui_temp run data get storage ui:gun temp.gun.ModeMax
execute store result score $mode ui_temp run data get storage ui:gun temp.gun.now.Mode

execute as @s[tag=tmw_use_n] at @s run function ui:tmw/260/use
execute as @s[tag=tmw_use_s] at @s run function ui:tmw/260/modechange

# 逆変換
execute if score $changed ui_temp matches 1 run function ui:tmw/260/changed

# 一時的ストレージクリア
data remove storage ui:gun temp