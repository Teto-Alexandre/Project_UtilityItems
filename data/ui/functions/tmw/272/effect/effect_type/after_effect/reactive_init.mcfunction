execute unless data storage ui:temp temp.effect.cg.reactive_effect run data modify storage ui:temp temp.effect.cg.reactive_effect set value {}
execute if data storage ui:temp temp.effect.merge_checker run data modify storage ui:temp temp.effect.cg.reactive_effect.merge_checker set from storage ui:temp temp.effect.merge_checker
execute if data storage ui:temp temp.effect.var_checker run data modify storage ui:temp temp.effect.cg.reactive_effect.var_checker set from storage ui:temp temp.effect.var_checker
execute if data storage ui:temp temp.effect.from_self run data modify storage ui:temp temp.effect.cg.reactive_effect.from_self set from storage ui:temp temp.effect.from_self
execute if data storage ui:temp temp.effect.get_node run data modify storage ui:temp temp.effect.cg.reactive_effect.get_node set from storage ui:temp temp.effect.get_node
execute if data storage ui:temp temp.effect.no_other run data modify storage ui:temp temp.effect.cg.reactive_effect.no_other set from storage ui:temp temp.effect.no_other
execute if data storage ui:temp temp.effect.no_self run data modify storage ui:temp temp.effect.cg.reactive_effect.no_self set from storage ui:temp temp.effect.no_self
execute if data storage ui:temp temp.effect.invert run data modify storage ui:temp temp.effect.cg.reactive_effect.invert set from storage ui:temp temp.effect.invert
execute if data storage ui:temp temp.effect.mute run data modify storage ui:temp temp.effect.cg.reactive_effect.mute set from storage ui:temp temp.effect.mute