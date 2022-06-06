# 1.単種類射撃

# 基本の射撃タイプを入力
    execute store result score $bursttype ui_temp run data get storage ui:gun temp.BurstType

# ベースタイプを登録
    scoreboard players set $basetype ui_temp 1