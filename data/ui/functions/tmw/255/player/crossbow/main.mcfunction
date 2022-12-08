#

# 今の状態はいつでも射撃できる
scoreboard players set $stats ui_temp 0
scoreboard players set $hand ui_temp 0

#
item modify entity @s weapon.mainhand ui:crossbow_charge

# 装備更新変数をリセット
scoreboard players set $changed ui_temp 0

# バースト管理変数をリセット
scoreboard players set $burst_alt ui_temp 0
scoreboard players set $burst_alt.id ui_temp 0

# チャージ変数をリセット
scoreboard players set $ishold ui_temp 0

# 必要データ収集
data modify storage ui:tmw temp.this set from entity @s SelectedItem
data modify storage ui:gun temp set from storage ui:tmw temp.this.tag.tmw.gun
data modify storage ui:gun temp.DisplayName set from storage ui:tmw temp.this.tag.display.Name

# 初期設定
execute unless data storage ui:gun temp.now.First run function ui:tmw/255/player/crossbow/changed/first

scoreboard players operation $id ui_temp = @s ui_id
scoreboard players operation $team ui_temp = @s ui_team
scoreboard players operation $sneak_time ui_temp = @s ui_st2
execute store result score $basetype ui_temp run data get storage ui:gun temp.BaseType
execute store result score $cooltime ui_temp run data get storage ui:gun temp.now.CT
execute store result score $reloadtime ui_temp run data get storage ui:gun temp.now.ReloadTime
execute store result score $model ui_temp run data get storage ui:gun temp.now.Model
execute store result score $bullets ui_temp run data get storage ui:gun temp.now.Bullets

# 検知範囲拡大
tag @a[tag=tmw_crossbow_mh_s] add tmw_crossbow_mh_n
tag @a[tag=tmw_drop_s] add tmw_drop_n

# $basetype よりバーストタイプ、インク消費を取得
execute store result score $burst ui_temp run data get storage ui:gun temp.now.Burst
function ui:tmw/255/player/crossbow/basetype/basetype

# バースト数
# 1:定量バースト, 2:継続射撃, 3:チャージ連射+倍率, 4:ID式チャージ単射撃, 5:ID式連射補正関数, 6:遅延認識, 7:新3, 8:新4
#tellraw @a[scores={ui_use1=1..}] [{"score":{"objective":"ui_temp","name":"$bursttype"}}]
execute if score $bursttype ui_temp matches 1 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 if score $reloadtime ui_temp matches 0 as @s[tag=tmw_crossbow_mh_n] run function ui:tmw/255/player/crossbow/burst/burst
execute if score $bursttype ui_temp matches 2 as @s[tag=tmw_crossbow_mh_n] if score $reloadtime ui_temp matches 0 run function ui:tmw/255/player/crossbow/burst/burst
execute if score $bursttype ui_temp matches 3 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 if score $reloadtime ui_temp matches 0 as @s[tag=tmw_crossbow_mh_n] run function ui:tmw/255/player/crossbow/burst/burst3
execute if score $bursttype ui_temp matches 3 if score $burst ui_temp matches 1.. as @s[tag=tmw_crossbow_mh_n] run function ui:tmw/255/player/crossbow/burst/burst3.stop
execute if score $bursttype ui_temp matches 4 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 if score $reloadtime ui_temp matches 0 as @s[tag=tmw_crossbow_mh_n] run function ui:tmw/255/player/crossbow/burst/burst4
execute if score $bursttype ui_temp matches 5 as @s[tag=tmw_crossbow_mh_n] run function ui:tmw/255/player/crossbow/burst/burst5
execute if score $bursttype ui_temp matches 6 as @s[tag=tmw_crossbow_mh_n] run function ui:tmw/255/player/crossbow/burst/burst
execute if score $bursttype ui_temp matches 7 run function ui:tmw/255/player/crossbow/burst/burst7
execute if score $bursttype ui_temp matches 8 run function ui:tmw/255/player/crossbow/burst/burst8
execute if score $bursttype ui_temp matches 9 run function ui:tmw/255/player/crossbow/burst/burst9

# 常駐効果
scoreboard players remove @s[scores={ui_gct=0..}] ui_gct 1
execute if entity @s[gamemode=!spectator] run function ui:tmw/255/player/crossbow/constant/core

# Qキーでリロード（仮）
execute as @s[tag=tmw_drop_n] run function ui:tmw/255/player/crossbow/reload/top

# クールタイム解除
execute unless score $cooltime ui_temp matches 0 run function ui:tmw/255/player/crossbow/ct

# リロード中
execute unless score $reloadtime ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/time

# 弾丸の射出
    #たまありバースト+クールタイム完遂
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score $reloadtime ui_temp matches 0 at @s[gamemode=!spectator] run function ui:tmw/255/player/crossbow/attack/master
    #バースト+クールタイム完遂、発射できなかったなら
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score $reloadtime ui_temp matches 0 at @s[tag=!ui_temp_success] run function ui:tmw/255/player/crossbow/fail

# 逆変換
execute if score $changed ui_temp matches 1 run function ui:tmw/255/player/crossbow/changed/core

# タグ消し
tag @s remove ui_temp_move
tag @s remove ui_temp_success

# 一時的ストレージクリア
data remove storage ui:gun temp
data remove storage ui:gun temp2
data remove storage ui:tmw temp

# 最後に
schedule function ui:tmw/255/player/crossbow/last 1t append