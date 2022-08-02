# -1.スペシャル

# スペシャルの射撃タイプを入力
    execute store result score $bursttype ui_temp run data get storage ui:gun temp.SPBurstType

# ベースタイプを登録
    scoreboard players set $basetype ui_temp -1

# インク消費、回復を0にする
    scoreboard players set $ink.main ui_temp 0
    scoreboard players set $ink.max ui_temp 0
