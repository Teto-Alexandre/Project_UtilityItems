#listでeffectを複数入れると、ランダムに一個を適応する
execute store result score $mod ui_calc1 run data get storage ui:temp temp.effect.case
function ui:common/rand

execute if score $rand ui_calc1 matches 1.. run function ui:tmw/272/id/1/misc/case/burn

data modify storage ui:temp temp.effect set from storage ui:temp temp.effect.case[0]
