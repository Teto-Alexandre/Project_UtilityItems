# 3.ファイナル

# 基本の射撃タイプを入力
    execute store result score $burst.max ui_temp run data get storage ui:gun temp.BurstMax

# 最後ならファイナル状態用に上書き
    execute if entity @s[tag=ui_use_c] store result score $burst.max ui_temp run data get storage ui:gun temp.FinalBurstMax