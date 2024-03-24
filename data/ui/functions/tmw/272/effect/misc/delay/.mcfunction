#listでeffectを複数入れると、ランダムに一個を適応する
execute store result score $delay ui_temp run data get storage ui:temp temp.effect.delay
data remove storage ui:temp temp.effect.delay
execute if data storage ui:temp temp.effect.condition run data remove storage ui:temp temp.effect.condition
data modify storage ui:temp temp.temp.effect set value {effect_type:"after_effect",cg:{cost:{amount:0,bypass:1},delay:0,effects:[{}]}}

data modify storage ui:temp temp.temp.effect.cg.effects[0] set from storage ui:temp temp.effect
execute store result storage ui:temp temp.temp.effect.cg.delay int 1 run scoreboard players get $delay ui_temp

data modify storage ui:temp temp.effect set from storage ui:temp temp.temp.effect