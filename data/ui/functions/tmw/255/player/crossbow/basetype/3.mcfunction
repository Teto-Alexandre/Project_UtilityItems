# 3.ファイナル

# 基本の射撃タイプを入力
    execute store result score $bursttype ui_temp run data get storage ui:gun temp.BurstType
# メインウェポン消費インク取得
    execute store result score $ink.main ui_temp run data get storage ui:gun temp.MainInkUse
# ホールド状態を取得
    execute store result score $ishold ui_temp run data get storage ui:gun temp.now.IsHold

# 初入力でクールタイム読み込み(+慣性打ち消し)、さらにホールド状態を0にする
    execute if entity @s[tag=tmw_use_c] run scoreboard players set $ishold ui_temp 0
    execute if entity @s[tag=tmw_use_c] run scoreboard players set $changed ui_temp 1

# 最後ならファイナル状態用に上書き
    execute if score $ishold ui_temp matches 0 run scoreboard players set $bursttype ui_temp 1
    execute if score $ishold ui_temp matches 0 run scoreboard players set $burst ui_temp 1
    #execute if score $ishold ui_temp matches 0 store result score $burst ui_temp run data get storage ui:gun temp.FinalBurst
# メインウェポン消費インク取得
    execute if score $ishold ui_temp matches 0 store result score $ink.main ui_temp run data get storage ui:gun temp.FinalInkUse

# ベースタイプを登録
    scoreboard players set $basetype ui_temp 1
    execute if score $ishold ui_temp matches 0 run scoreboard players set $basetype ui_temp 3