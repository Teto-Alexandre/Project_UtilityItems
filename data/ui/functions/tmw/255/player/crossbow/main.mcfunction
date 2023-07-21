#

#
item modify entity @s weapon.mainhand ui:crossbow_charge

# 今の状態はいつでも射撃できる
scoreboard players set $stats ui_temp 0
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
scoreboard players operation $sneak_time ui_temp = @s ui_st2
execute store result score $basetype ui_temp run data get storage ui:gun temp.BaseType
execute store result score $cooltime ui_temp run data get storage ui:gun temp.now.CT
execute store result score $addct ui_temp run data get storage ui:gun temp.now.AddCT
execute store result score $reloadtime ui_temp run data get storage ui:gun temp.now.ReloadTime
execute store result score $firetime ui_temp run data get storage ui:gun temp.now.FireTime
execute store result score $firecount ui_temp run data get storage ui:gun temp.now.FireCount
execute store result score $bullets ui_temp run data get storage ui:gun temp.now.Bullets
execute store result score $burst ui_temp run data get storage ui:gun temp.now.Burst

execute store result score $burst.max ui_temp run data get storage ui:gun temp.Burst

# 検知範囲拡大
tag @s[tag=tmw_crossbow_mh_s] add tmw_active_temp
tag @s[tag=tmw_crossbow_mh_n] add tmw_active_temp

# 発射無効化
tag @s[tag=tmw_active_temp,tag=tmw255_disable_fire] remove tmw_active_temp
tag @s[tag=tmw_drop_n,tag=tmw255_disable_fire] remove tmw_drop_n
tag @s[tag=tmw_drop_s,tag=tmw255_disable_fire] remove tmw_drop_s

# 常駐効果
execute if entity @s[gamemode=!spectator] run function ui:tmw/255/player/crossbow/constant/core

# Qキーでリロード（仮）
execute as @s[tag=tmw_drop_n] if score $cooltime ui_temp matches 0 if score $firetime ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/top

# Fでスコープ
execute as @s[tag=tmw_drop_s] if score $cooltime ui_temp matches 0 if score $firetime ui_temp matches 0 at @s run function ui:tmw/255/player/crossbow/scope/manager

# クールタイム解除
execute unless score $cooltime ui_temp matches 0 run function ui:tmw/255/player/crossbow/ct

# リロード中
execute unless score $reloadtime ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/time

# 射撃管制
scoreboard players set $fire ui_temp 0
execute if entity @s[tag=tmw_active_temp] if score $reloadtime ui_temp matches 0 run scoreboard players set $fire ui_temp 1
execute unless score $firetime ui_temp matches 0 run scoreboard players set $fire ui_temp 1
execute if score $fire ui_temp matches 1 run function ui:tmw/255/player/crossbow/fire/time

# 弾丸の射出
execute if score $fire ui_temp matches 1.. run function ui:tmw/255/player/crossbow/fire/attack

# 逆変換
execute if score $changed ui_temp matches 1 run function ui:tmw/255/player/crossbow/changed/core

# タグ消し
tag @s remove ui_temp_move
tag @s remove ui_temp_success
tag @s[tag=tmw_active_temp] remove tmw_active_temp

# 一時的ストレージクリア
data remove storage ui:gun temp
data remove storage ui:gun temp2
data remove storage ui:tmw temp

# 最後に
schedule function ui:tmw/255/player/crossbow/last 1t append