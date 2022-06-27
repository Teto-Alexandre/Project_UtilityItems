# 装備更新変数をリセット
scoreboard players set $changed ui_temp 0

# バースト管理変数をリセット
scoreboard players set $burst_alt ui_temp 0
scoreboard players set $burst_alt.id ui_temp 0

# 必要データ収集
data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw.gun
data modify storage ui:gun temp.DisplayName set from entity @s SelectedItem.tag.display.Name
execute store result score $color ui_temp run scoreboard players get @s ui_team
execute store result score $basetype ui_temp run data get storage ui:gun temp.BaseType
execute store result score $ink ui_temp run data get storage ui:gun temp.now.Ink
execute store result score $ink.max ui_temp run data get storage ui:gun temp.InkMax
execute store result score $spneed ui_temp run data get storage ui:gun temp.SPNeed
execute store result score $ink.m ui_temp run data get storage ui:gun temp.MoveInkRegen
execute store result score $ink.s ui_temp run data get storage ui:gun temp.ShootInkRegen
execute store result score $cooltime ui_temp run data get storage ui:gun temp.now.CT
execute store result score $sp ui_temp run data get storage ui:gun temp.now.SP
execute store result score $sptype ui_temp run data get storage ui:gun temp.SPType
execute store result score $sptime ui_temp run data get storage ui:gun temp.now.SPTime
execute store result score $sptime.max ui_temp run data get storage ui:gun temp.SPTime
execute store result score $model ui_temp run data get storage ui:gun temp.now.Model

# $basetype よりバーストタイプ、インク消費を取得
execute store result score $burst ui_temp run data get storage ui:gun temp.now.Burst
function ui:tmw/237/basetype/basetype

# サブウェポン消費インク取得
execute store result score $ink.sub ui_temp run data get storage ui:gun temp.SubInkUse
execute if score $sptype ui_temp matches 103 if score $sptime ui_temp matches 1.. run scoreboard players operation $ink.sub ui_temp /= #8 ui_num

# キー入力検知範囲拡大
#tag @s[tag=tmw_drop_s] add tmw_drop_n
#tag @s[tag=tmw_oh_s] add tmw_oh_n

# 常駐効果
scoreboard players remove @s[scores={ui_gct=0..}] ui_gct 1
effect give @s saturation 1 0 true
execute if entity @s[gamemode=!spectator] run function ui:tmw/237/constant/core

# インク回復
execute if score $ink ui_temp < $ink.max ui_temp run function ui:tmw/237/reload

# バースト数 ( 1:定量バースト, 2:継続射撃, 3:チャージ連射+倍率, 4:ID式チャージ単射撃, 5:ID式連射補正関数, 6:遅延認識 )
execute if score $bursttype ui_temp matches 1 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst/burst
execute if score $bursttype ui_temp matches 2 as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst/burst
execute if score $bursttype ui_temp matches 3 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 as @s[scores={ui_use2=1..}] run function ui:tmw/237/burst/burst3
execute if score $bursttype ui_temp matches 3 if score $burst ui_temp matches 1.. as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst/burst3.stop
execute if score $bursttype ui_temp matches 4 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 as @s[scores={ui_use2=1..}] run function ui:tmw/237/burst/burst4
execute if score $bursttype ui_temp matches 5 as @s[scores={ui_use2=1..}] run function ui:tmw/237/burst/burst5
execute if score $bursttype ui_temp matches 6 as @s[scores={ui_use2=1..}] run function ui:tmw/237/burst/burst

# クールタイム解除
execute unless score $cooltime ui_temp matches 0 run function ui:tmw/237/ct

# 弾丸の射出
    #たまなしバースト+クールタイム完遂
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score $ink ui_temp < $ink.main ui_temp at @s run function ui:tmw/237/fail
    #たまありバースト+クールタイム完遂
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score $ink ui_temp >= $ink.main ui_temp at @s run function ui:tmw/237/attack/master
    #バースト+クールタイム完遂、発射できなかったなら
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 at @s[tag=!ui_temp_success] run function ui:tmw/237/fail

# サブウェポン発動
execute as @s[tag=tmw_drop_n] if score $cooltime ui_temp matches 0 run function ui:tmw/237/sub/lim

# スペシャルウェポン発動
scoreboard players operation @s ui_paint < $spneed ui_temp
execute as @s[tag=tmw_oh_n] if score $cooltime ui_temp matches 0 run function ui:tmw/237/sp/lim
execute if score $sp ui_temp matches 0 if score @s ui_paint = $spneed ui_temp at @s run function ui:tmw/237/sp/ready
execute if score $sp ui_temp matches 1 if score @s ui_paint < $spneed ui_temp run function ui:tmw/237/sp/not
execute if score $sptime ui_temp matches 1.. at @s run function ui:tmw/237/sp/time

# 逆変換
execute if score $changed ui_temp matches 1 run function ui:tmw/237/changed/core

# タグ消し
tag @s remove ui_temp_move
tag @s remove ui_temp_success

# 死
execute at @s[gamemode=!spectator] if block ~ ~ ~ #ui:liq if entity @e[type=player,dx=0] run function ui:common/highdamage

# 一時的ストレージクリア
data remove storage ui:gun temp
data remove storage ui:gun temp2

# 最後に
schedule function ui:tmw/237/last 1t append