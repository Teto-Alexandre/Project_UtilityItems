# 5.チャージ&パルス

# 基本の射撃タイプを入力
    execute store result score $bursttype ui_temp run data get storage ui:gun temp.BurstType
# メインウェポン消費インク取得
    execute store result score $ink.main ui_temp run data get storage ui:gun temp.MainInkUse
    execute if score $bursttype ui_temp matches 11 if score $shotmode ui_temp matches 2 store result score $ink.main ui_temp run data get storage ui:gun temp.MainInkUse2
    execute if score $bursttype ui_temp matches 12 if score $multibullet ui_temp matches 1.. store result score $ink.main ui_temp run data get storage ui:gun temp.MainInkUse2
# ホールド状態を取得
    execute store result score $ishold ui_temp run data get storage ui:gun temp.now.IsHold
    #tellraw @a [{"score":{"objective":"ui_temp","name":"$ishold"}}]
# ホールド時の追加状態を取得
    execute store result score $holdsnd ui_temp run data get storage ui:gun temp.HoldSnd

# 構える演出
    execute unless data storage ui:gun temp{ChargeStartSound:0} if score $holdsnd ui_temp matches 0 if score @s ui_use1 matches 1.. if score $ishold ui_temp matches 0 if score $cooltime ui_temp matches 0 at @s run playsound block.piston.extend player @a ~ ~ ~ 1 0.8 0
    execute unless data storage ui:gun temp{ChargeStartSound:0} if score $holdsnd ui_temp matches 0 if score @s ui_use1 matches 1.. if score $ishold ui_temp matches 0 if score $cooltime ui_temp matches 0 at @s run playsound block.tripwire.click_on player @a ~ ~ ~ 1 0.6 0
    execute if score $holdsnd ui_temp matches 0 if score @s ui_use1 matches 1.. if score $ishold ui_temp matches 0 if score $cooltime ui_temp matches 0 at @s run particle crit ~ ~1 ~ 0.2 0.2 0.2 1 10 normal

# 初入力でクールタイム読み込み、さらにホールド状態を0にする
    execute if score @s ui_use1 matches 1.. if score $ishold ui_temp matches 0 if score $cooltime ui_temp matches 0 run scoreboard players set $changed ui_temp 1
    execute if score @s ui_use1 matches 1.. if score $ishold ui_temp matches 0 if score $cooltime ui_temp matches 0 run scoreboard players set $ishold ui_temp 1

# ベースタイプを登録
    scoreboard players set $basetype ui_temp 1