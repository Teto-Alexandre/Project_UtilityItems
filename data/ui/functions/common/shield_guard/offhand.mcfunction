# スコア化
    #data merge storage ui:common {input:{Damage:10}}

#
    #execute store result score $common.armor_damage ui_temp run data get storage ui:common input.Damage

# 耐久度ダメージ
    #頭
    data merge storage ui:common {input:{Mode:"get",Num:-106}}
    function ui:common/item
    data modify storage ui:common input.Item set from storage ui:common_result temp
    data merge storage ui:common {input:{Mode:"damage",Num:0}}
    execute store result storage ui:common input.Num int 1 run scoreboard players get $common.armor_damage ui_temp
    function ui:common/item
    data modify storage ui:common input.Item set from storage ui:common_result temp
    data merge storage ui:common {input:{Mode:"replace",Num:-106}}
    function ui:common/item

# 盾破壊
    execute if data storage ui:common input.Break at @s positioned ^ ^ ^0.1 rotated ~ 0 run summon magma_cube ~ ~ ~ {Tags:["ui_common_shield_slime"],ActiveEffects:[{Id:14,Duration:20,ShowParticles:0b}],HandItems:[{id:"wooden_axe",Count:1b},{}],Attributes:[{Name:"generic.attack_damage",Base:-100}]}
    execute if data storage ui:common input.Break run schedule function ui:common/shield_guard/kill_slime 1t
