# 2.ホールド

# 基本の射撃タイプを入力
    execute store result score $bursttype ui_temp run data get storage ui:gun temp.BurstType
# メインウェポン消費インク取得
    execute store result score $ink.main ui_temp run data get storage ui:gun temp.MainInkUse
# ホールド状態を取得
    execute store result score $ishold ui_temp run data get storage ui:gun temp.now.IsHold
    
# 初入力でクールタイム読み込み(+慣性打ち消し)、さらにホールド状態を0にする
    execute if score @s ui_use1 matches 1.. if score @s ui_use2 matches 0 run scoreboard players set $ishold ui_temp 0
    execute if score @s ui_use1 matches 1.. if score @s ui_use2 matches 0 run scoreboard players set $changed ui_temp 1

# ホールド中ならホールド状態用に上書き
    execute if score $ishold ui_temp matches 1 store result score $bursttype ui_temp run data get storage ui:gun temp.HoldBurstType
# メインウェポン消費インク取得
    execute if score $ishold ui_temp matches 1 store result score $ink.main ui_temp run data get storage ui:gun temp.HoldInkUse

# ベースタイプを登録
    scoreboard players set $basetype ui_temp 1
    execute if score $ishold ui_temp matches 1 run scoreboard players set $basetype ui_temp 2