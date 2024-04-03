data modify storage ui:cg1 temp.list[0].tag.tmw.cg.cost_temp set value {amount:0}
data modify storage ui:cg1 temp.list[0].tag.tmw.cg.cost_temp.amount set from storage ui:cg1 temp.list[0].tag.tmw.cg.cost
data modify storage ui:cg1 temp.list[0].tag.tmw.cg.cost set from storage ui:cg1 temp.list[0].tag.tmw.cg.cost_temp
data remove storage ui:cg1 temp.list[0].tag.tmw.cg.cost_temp

execute if data storage ui:cg1 temp.list[0].tag.tmw.cg.cost_type run data modify storage ui:cg1 temp.list[0].tag.tmw.cg.cost.type set from storage ui:cg1 temp.list[0].tag.tmw.cg.cost_type
execute if data storage ui:cg1 temp.list[0].tag.tmw.cg.cost_mods run data modify storage ui:cg1 temp.list[0].tag.tmw.cg.cost.mods set from storage ui:cg1 temp.list[0].tag.tmw.cg.cost_mods
execute if data storage ui:cg1 temp.list[0].tag.tmw.cg.cost_min run data modify storage ui:cg1 temp.list[0].tag.tmw.cg.cost.min set from storage ui:cg1 temp.list[0].tag.tmw.cg.cost_min
execute if data storage ui:cg1 temp.list[0].tag.tmw.cg.cost_max run data modify storage ui:cg1 temp.list[0].tag.tmw.cg.cost.max set from storage ui:cg1 temp.list[0].tag.tmw.cg.cost_max
