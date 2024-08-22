# modify_after_effect の delete を強制呼び出し
data modify storage ui:temp temp.effect merge value {merge_checker:{},effect_mode:"delete"}

# この AE のデータを merge_checker に入力して整形
data modify storage ui:temp temp.effect.merge_checker set from storage ui:temp card
data remove storage ui:temp temp.effect.merge_checker.repeat
data remove storage ui:temp temp.effect.merge_checker.delay
data remove storage ui:temp temp.effect.merge_checker.delay_base
execute if data storage ui:temp card.delete_mute run data modify storage ui:temp temp.effect.mute set value 1

# 探索数は限度いっぱいまで
scoreboard players set $var ui_temp 32767

# 結果は返さない
scoreboard players set $condition_checker_temp ui_temp 0

# 削除実行
function ui:tmw/272/effect/effect_type/modify_death_effect/each

# データ削除
data remove storage ui:temp temp.death_effect
scoreboard players reset $death_effect_num ui_temp
scoreboard players reset $death_effect_success ui_temp
