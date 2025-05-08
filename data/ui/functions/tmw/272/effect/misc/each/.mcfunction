# 以下のように記述すると macro_name_a1 の部分が 1 3 5 7 それぞれで実行されるように4つのノードが後ろに生成される
## data get entity @s {each:{list:['effect_type:"damage",var:',macro_name_a1,',target_type:5'],macro_name_a1:[1,3,5,7]}}

# temp領域に空のコピー(String)を1つ作成
    ## 合成中の文字列が入る
    data modify storage ui:temp temp.effect_strings set value [""]
    ## strings を増やすときにここにアレする
    data modify storage ui:temp temp.effect_strings_temp set value [""]
    ## each.list[0]の前部分を入れて比較する
    data modify storage ui:temp temp.effect_string set value ""
    ## マクロでcomとbineを接続する用 最後にはstringsも入る
    data modify storage ui:temp temp.effect_macro set value {}
    ## each.list[0]の前から取得してeachからmacro_name_Xを参照する
    data modify storage ui:temp temp.effect_macro_meta set value {}
    ## macro_name_Xを取得するところ
    data modify storage ui:temp temp.effect_macro_temp set value []
    ## ui:temp temp.effect.each.listの数 消費しきったらこのシステムを止める
    scoreboard players set $tmw272_misc_each_count0 ui_temp 0
    ## ui:temp temp.effect_stringsの数
    scoreboard players set $tmw272_misc_each_count ui_temp 0
    ## 上のをeach_cだけで利用する effect_strings内のeach達全てにこの文字列を複製する
    scoreboard players set $tmw272_misc_each_count_temp ui_temp 0
    ## macro_name_Xの数が入る この数だけeffect_stringsを複製して複製する(?)
    scoreboard players set $tmw272_misc_each_count2 ui_temp 0

# 前から順番に文字列合成を行ってコピーを満たす
    execute store result score $tmw272_misc_each_count0 ui_temp run data get storage ui:temp temp.effect.each.list
    #tellraw @a [{"text":"$tmw272_misc_each_count0: ","color":"gray"},{"score":{"name":"$tmw272_misc_each_count0","objective":"ui_temp"},"color":"gray"},{"text":", ","color":"gray"},{"nbt":"temp.effect.each.list","storage":"ui:temp","color":"gray"}]
    execute if score $tmw272_misc_each_count0 ui_temp matches 1.. run function ui:tmw/272/effect/misc/each/main

# effect_stringsをui:temp temp.card.effectsに入力して、その数だけ$count ui_tempを増やす　現在実行中のburn.actはなんかいい感じに飛ばす



data remove storage ui:temp temp.card.effects[0]

function ui:tmw/272/effect/misc/each/e_a


data modify storage ui:temp temp.card.effects prepend value {}






# 入力文字列の先頭11文字を切り取って macro_name_ だった場合にその後ろの文字で each代入列(例:a1) を検索
# コピー前の数を各文字列の記録回数とする     each代入列の数-1 だけtemp領域のコピーを複製する
# 最後に前と後ろを { } で囲って data append で strage に積む
# そして現在の effect ノードを消せばいい感じに動く...はず

##listでeffectを複数入れると、ランダムに一個を適応する
#execute store result score $mod ui_calc1 run data get storage ui:temp temp.effect.case
#function ui:common/rand
#
#execute if score $rand ui_calc1 matches 1.. run function ui:tmw/272/effect/misc/case/burn
#
#data modify storage ui:temp temp.effect set from storage ui:temp temp.effect.case[0]
