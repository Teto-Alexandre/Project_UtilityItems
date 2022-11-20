#

scoreboard players set $type ui_temp -1
scoreboard players set $hand ui_temp 0

# 必要データ収集
data modify storage ui:tmw temp.this set from entity @s SelectedItem
data modify storage ui:gun temp set from storage ui:tmw temp.this.tag.tmw.stats

# 初期設定
execute unless data storage ui:gun temp.now.First run function ui:tmw/255/player/resource/first

# 一時的ストレージクリア
data remove storage ui:gun temp
data remove storage ui:tmw temp
