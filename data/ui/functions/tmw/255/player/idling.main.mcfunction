#

# 今の状態は弾が入ってない
scoreboard players set $stats ui_temp 1
scoreboard players set $hand ui_temp 0

# 装備更新変数をリセット
scoreboard players set $changed ui_temp 0

# バースト管理変数をリセット
scoreboard players set $burst_alt ui_temp 0
scoreboard players set $burst_alt.id ui_temp 0

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
execute store result score $reloadtime ui_temp run data get storage ui:gun temp.now.ReloadTime
execute store result score $model ui_temp run data get storage ui:gun temp.now.Model
scoreboard players set $bullets ui_temp 0

# 検知範囲拡大
tag @a[tag=tmw_use_s] add tmw_use_n
tag @a[tag=tmw_drop_s] add tmw_drop_n

# 常駐効果
scoreboard players remove @s[scores={ui_gct=0..}] ui_gct 1
execute if entity @s[gamemode=!spectator] run function ui:tmw/255/player/crossbow/constant/core

# Qキーでリロード（仮）
execute as @s[tag=tmw_drop_n] if score $cooltime ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/top

# クールタイム解除
execute unless score $cooltime ui_temp matches 0 run function ui:tmw/255/player/crossbow/ct

# リロード中
execute unless score $reloadtime ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/time

# 右クリックでリロード
execute as @s[tag=tmw_use_n] if score $cooltime ui_temp matches 0 if score $reloadtime ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/top

# 逆変換
execute if score $changed ui_temp matches 1 run function ui:tmw/255/player/crossbow/changed/core

# タグ消し
tag @s remove ui_temp_move

# 一時的ストレージクリア
data remove storage ui:gun temp
data remove storage ui:gun temp2
data remove storage ui:tmw temp

# 最後に
schedule function ui:tmw/255/player/crossbow/last 1t append