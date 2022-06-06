# 2.ホールド

# 基本の射撃タイプを入力
    execute store result score $burst ui_temp run data get storage ui:gun temp.Burst

# ホールド中ならホールド状態用に上書き
    execute if score @s ui_use2 matches 2.. store result score $burst ui_temp run data get storage ui:gun temp.HoldBurst