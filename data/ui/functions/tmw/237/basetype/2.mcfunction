# 2.ホールド

# 基本の射撃タイプを入力
    execute store result score $bursttype ui_temp run data get storage ui:gun temp.BurstType
# メインウェポン消費インク取得
    execute store result score $ink.main ui_temp run data get storage ui:gun temp.MainInkUse

# ホールド中ならホールド状態用に上書き
    execute if score @s ui_use2 matches 2.. store result score $bursttype ui_temp run data get storage ui:gun temp.HoldBurstType
# メインウェポン消費インク取得
    execute if score @s ui_use2 matches 2.. store result score $ink.main ui_temp run data get storage ui:gun temp.HoldInkUse

# ベースタイプを登録
    scoreboard players set $basetype ui_temp 1
    execute if score @s ui_use2 matches 2.. run scoreboard players set $basetype ui_temp 2