# スコア化
    #data merge storage ui:common {input:{Damage:10}}

#
    #execute store result score $common.armor_damage ui_temp run data get storage ui:common input.Damage

# 耐久度ダメージ
    #頭
    data merge storage ui:common {input:{Mode:"get",Num:-1}}
    function ui:common/item
    data modify storage ui:common input.Item set from storage ui:common_result temp
    data merge storage ui:common {input:{Mode:"damage",Num:0}}
    execute store result storage ui:common input.Num int 1 run scoreboard players get $common.armor_damage ui_temp
    function ui:common/item
    data modify storage ui:common input.Item set from storage ui:common_result temp
    data merge storage ui:common {input:{Mode:"replace",Num:-1}}
    function ui:common/item
