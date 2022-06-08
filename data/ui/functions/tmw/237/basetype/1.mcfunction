# 1.単種類射撃

# 基本の射撃タイプを入力
    execute store result score $bursttype ui_temp run data get storage ui:gun temp.BurstType
# メインウェポン消費インク取得
    execute store result score $ink.main ui_temp run data get storage ui:gun temp.MainInkUse

# ベースタイプを登録
    scoreboard players set $basetype ui_temp 1