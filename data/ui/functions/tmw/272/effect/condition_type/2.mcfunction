#say 条件のチェック
# condition:{id:2,list:[{input:"health",min:10},{input:"mana",max:5}]}

execute if data storage ui:temp temp.effect.condition.indep run scoreboard players operation $condition_checker_indep ui_temp = $condition_checker ui_temp

scoreboard players set $condition_checker ui_temp 0
data modify storage ui:temp temp.temp.list set from storage ui:temp temp.effect.condition.list

execute store result score $count_condition_list ui_temp run data get storage ui:temp temp.temp.list
execute if score $count_condition_list ui_temp matches 1.. run function ui:tmw/272/effect/condition_type/2.lp

scoreboard players reset $count_condition_list ui_temp
data remove storage ui:temp temp.temp



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

# continueがついていなければconditionはリセット、indepがあれば元の値を再取得
execute unless data storage ui:temp temp.effect.condition.continue run scoreboard players set $condition_checker ui_temp 0
execute if data storage ui:temp temp.effect.condition.indep run scoreboard players operation $condition_checker ui_temp = $condition_checker_indep ui_temp

scoreboard players reset $condition_min ui_temp
scoreboard players reset $condition_max ui_temp
scoreboard players reset $condition_checker_indep ui_temp