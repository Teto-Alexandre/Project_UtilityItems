# 3.ファイナル

# 基本の射撃タイプを入力
    execute store result score $bursttype ui_temp run data get storage ui:gun temp.BurstType
# メインウェポン消費インク取得
    execute store result score $ink.main ui_temp run data get storage ui:gun temp.MainInkUse

# 最後ならファイナル状態用に上書き
    execute if entity @s[tag=ui_use_c] store result score $bursttype ui_temp run data get storage ui:gun temp.FinalBurstType
# メインウェポン消費インク取得
    execute if entity @s[tag=ui_use_c] store result score $ink.main ui_temp run data get storage ui:gun temp.FinalInkUse

# ベースタイプを登録
    scoreboard players set $basetype ui_temp 1
    execute if entity @s[tag=ui_use_c] run scoreboard players set $basetype ui_temp 3