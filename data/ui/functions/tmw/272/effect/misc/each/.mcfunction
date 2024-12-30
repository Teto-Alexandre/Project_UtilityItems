# 以下のように記述すると macro_name_a1 の部分が 1 3 5 7 それぞれで実行されるように4つのノードが後ろに生成される
## data get entity @s {each:{list:['effect_type:"damage",var:',macro_name_a1,',target_type:5'],macro_name_a1:[1,3,5,7]}}

# temp領域に空のコピー(String)を1つ作成
data modify storage ui:temp temp.effect_strings set value [""]
data modify storage ui:temp temp.effect_string set value ""
data modify storage ui:temp temp.effect_macro set value {}
data modify storage ui:temp temp.effect_macro_meta set value {}
data modify storage ui:temp temp.effect_macro_temp set value []
scoreboard players set $tmw272_misc_each_count ui_temp 0
scoreboard players set $tmw272_misc_each_count_temp ui_temp 0
scoreboard players set $tmw272_misc_each_count2 ui_temp 0






# 前から順番に文字列合成を行ってコピーを満たす









# 入力文字列の先頭11文字を切り取って macro_name_ だった場合にその後ろの文字で each代入列(例:a1) を検索
# コピー前の数を各文字列の記録回数とする     each代入列の数-1 だけtemp領域のコピーを複製する
# 最後に前と後ろを { } で囲って data append で strage に積む
# そして現在の effect ノードを消せばいい感じに動く...はず

#listでeffectを複数入れると、ランダムに一個を適応する
execute store result score $mod ui_calc1 run data get storage ui:temp temp.effect.case
function ui:common/rand

execute if score $rand ui_calc1 matches 1.. run function ui:tmw/272/effect/misc/case/burn

data modify storage ui:temp temp.effect set from storage ui:temp temp.effect.case[0]
