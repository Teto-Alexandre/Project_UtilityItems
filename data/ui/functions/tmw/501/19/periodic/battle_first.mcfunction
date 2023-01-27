## 強化パーツを線形探索で読み取る
## 👆 - 訓練場に移動時、退室後に再利用するため

## モード設定: スキャン＋HUD起動
## 無敵 5 秒

# 戦闘開始時

#
tag @s remove tmw_501_19_battle_first
tag @s add tmw_501_19_battle_second

# ID共有
scoreboard players operation $id ui_temp = @s ui_id

# PDA追跡
execute as @e[tag=tmw_501_19_armorstand_pda] if score @s ui_id = $id ui_temp run tag @s add ui_temp_pda

# パーツ性能読み取り
function ui:tmw/501/19/functions/inventory/load/start

# PDA追跡解除
tag @e[tag=ui_temp_pda] remove ui_temp_pda
