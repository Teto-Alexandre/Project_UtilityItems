#

# 今の状態は弾が入ってない
scoreboard players set $stats ui_temp 1
scoreboard players set $hand ui_temp 0

# 装備更新変数をリセット
scoreboard players set $changed ui_temp 0

# チャージ変数をリセット
scoreboard players set $ishold ui_temp 0

#
scoreboard players set $reloaditem ui_temp 0

# 必要データ収集
data modify storage ui:tmw temp.this set from entity @s SelectedItem
data modify storage ui:gun temp set from storage ui:tmw temp.this.tag.tmw.gun
data modify storage ui:gun temp.DisplayName set from storage ui:tmw temp.this.tag.display.Name
execute if data storage ui:gun temp.ReloadItem run scoreboard players set $reloaditem ui_temp 1

# 初期設定
execute unless data storage ui:gun temp.now.First run function ui:tmw/255/player/crossbow/changed/first

scoreboard players operation $id ui_temp = @s ui_id
scoreboard players operation $team ui_temp = @s ui_team
execute store result score $basetype ui_temp run data get storage ui:gun temp.BaseType
execute store result score $cooltime ui_temp run data get storage ui:gun temp.now.CT
scoreboard players set $addct ui_temp 0
execute store result score $reloadtime ui_temp run data get storage ui:gun temp.now.ReloadTime
execute store result score $firetime ui_temp run data get storage ui:gun temp.now.FireTime
scoreboard players set $firecount ui_temp 0
scoreboard players set $bullets ui_temp 0

# 検知範囲拡大
tag @a[tag=tmw_use_s] add tmw_active_temp
tag @a[tag=tmw_use_n] add tmw_active_temp
tag @a[tag=tmw_drop_s] add tmw_drop_n

# 常駐効果
execute if entity @s[gamemode=!spectator] run function ui:tmw/255/player/crossbow/constant/core

# Qキーでリロード（仮）
execute as @s[tag=tmw_drop_n] if score $cooltime ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/top

# クールタイム解除
execute unless score $cooltime ui_temp matches 0 run function ui:tmw/255/player/crossbow/ct

# リロード中
execute unless score $reloadtime ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/time

# 射撃管制
execute unless score $firetime ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/time

# 右クリックでリロード
execute as @s[tag=tmw_active_temp] if score $cooltime ui_temp matches 0 if score $reloadtime ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/top

# 逆変換
execute if score $cooltime ui_temp matches 1.. run scoreboard players set $changed ui_temp 1
execute if score $changed ui_temp matches 1 run function ui:tmw/255/player/crossbow/changed/core

# タグ消し
tag @s remove ui_temp_move
tag @s[tag=tmw_active_temp] remove tmw_active_temp

# 一時的ストレージクリア
data remove storage ui:gun temp
data remove storage ui:gun temp2
data remove storage ui:tmw temp

# 最後に
schedule function ui:tmw/255/player/crossbow/last 1t append