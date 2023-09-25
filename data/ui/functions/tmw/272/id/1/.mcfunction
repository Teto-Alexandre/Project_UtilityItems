data modify storage ui:temp player_template set value {name:"attack1",cost_type:0,cost:1,effects:[{target_type:1,effect_type:1,var:1}]}

# 軽量化のためストレージに書き出す
data modify storage ui:temp card set from entity @s SelectedItem.tag.tmw.cg

# コモンより、使用可能かどうかの判定を行う
function ui:tmw/272/common/check_cost/

# 足りなかった場合
    #execute if score $check_cost ui_temp matches ..0 run function

# 使用可能だった場合
    #execute if score $check_cost ui_temp matches 1.. run function

# キャッシュクリア
scoreboard players reset $check_cost ui_temp
data remove storage ui:temp card