#

# 今の状態は弾が入ってない
scoreboard players set $stats ui_temp 1

# 装備更新変数をリセット
scoreboard players set $changed ui_temp 0

# バースト管理変数をリセット
scoreboard players set $burst_alt ui_temp 0
scoreboard players set $burst_alt.id ui_temp 0

# チャージ変数をリセット
scoreboard players set $ishold ui_temp 0

# 必要データ収集
data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw.gun
data modify storage ui:gun temp.DisplayName set from entity @s SelectedItem.tag.display.Name
# 最後に持った時間と連続していなかった場合ペナルティ（changedで常時時間係数を監視しないといけないので没）
execute unless data storage ui:gun temp.now.First run function ui:tmw/255/player/crossbow/changed/first

scoreboard players operation $id ui_temp = @s ui_id
scoreboard players operation $team ui_temp = @s ui_team
execute store result score $basetype ui_temp run data get storage ui:gun temp.BaseType
execute store result score $cooltime ui_temp run data get storage ui:gun temp.now.CT
execute store result score $model ui_temp run data get storage ui:gun temp.now.Model

# 常駐効果
scoreboard players remove @s[scores={ui_gct=0..}] ui_gct 1
execute if entity @s[gamemode=!spectator] run function ui:tmw/255/player/crossbow/constant/core

# Qキーでリロード（仮）
execute as @s[tag=tmw_drop_n] if score $cooltime ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/top

# クールタイム解除
execute unless score $cooltime ui_temp matches 0 run function ui:tmw/255/player/crossbow/ct

# hc
scoreboard players set $ink ui_temp 1
scoreboard players set $ink.main ui_temp 1

# 弾丸の射出
execute as @s[tag=tmw_use_n] if score $cooltime ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/top

# 逆変換
execute if score $changed ui_temp matches 1 run function ui:tmw/255/player/crossbow/changed/core

# タグ消し
tag @s remove ui_temp_move

# 一時的ストレージクリア
data remove storage ui:gun temp
data remove storage ui:gun temp2

# 最後に
schedule function ui:tmw/255/player/crossbow/last 1t append