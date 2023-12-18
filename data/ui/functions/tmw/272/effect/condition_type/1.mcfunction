#say 条件のチェック
#tellraw @s [{"score":{"name": "$condition_checker","objective": "ui_temp"}},{"text":"-"},{"score":{"name": "$condition_var","objective": "ui_temp"}}]
execute store result score $condition_min ui_temp run data get storage ui:temp temp.effect.condition.min 1
execute unless data storage ui:temp temp.effect.condition.min run scoreboard players reset $condition_min ui_temp
execute store result score $condition_max ui_temp run data get storage ui:temp temp.effect.condition.max 1
execute unless data storage ui:temp temp.effect.condition.max run scoreboard players reset $condition_max ui_temp

# 成功状態にしておく
scoreboard players set $condition ui_temp 1

# それぞれの場合の結果から外れていれば、失敗にする
execute unless data storage ui:temp temp.effect.condition.invert if score $condition_min ui_temp matches -2147483648..2147483647 if score $condition_checker ui_temp < $condition_min ui_temp run scoreboard players set $condition ui_temp 0
execute unless data storage ui:temp temp.effect.condition.invert if score $condition_max ui_temp matches -2147483648..2147483647 if score $condition_checker ui_temp > $condition_max ui_temp run scoreboard players set $condition ui_temp 0
execute if data storage ui:temp temp.effect.condition.invert if score $condition_min ui_temp matches -2147483648..2147483647 if score $condition_max ui_temp matches -2147483648..2147483647 if score $condition_checker ui_temp >= $condition_min ui_temp if score $condition_checker ui_temp <= $condition_max ui_temp run scoreboard players set $condition ui_temp 0

# continueがついていなければconditionはリセット
execute unless data storage ui:temp temp.effect.condition.continue run scoreboard players set $condition_checker ui_temp 0

scoreboard players reset $condition_min ui_temp
scoreboard players reset $condition_max ui_temp