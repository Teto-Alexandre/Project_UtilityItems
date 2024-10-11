execute if data storage ui:temp temp.effect.temp2.tag.tmw.cg.discard_effect.copy_display run data modify storage ui:temp temp.effect.temp2.tag.tmw.cg.discard_effect.name set from storage ui:temp temp.effect.temp2.tag.display.Name
execute if data storage ui:temp temp.effect.temp2.tag.tmw.cg.discard_effect.copy_display run data modify storage ui:temp temp.effect.temp2.tag.tmw.cg.discard_effect.lore set from storage ui:temp temp.effect.temp2.tag.display.Lore
execute if data storage ui:temp temp.effect.temp2.tag.tmw.cg.discard_effect.list_self run data modify storage ui:temp temp.effect.temp2.tag.tmw.cg.discard_effect.list set value []
execute if data storage ui:temp temp.effect.temp2.tag.tmw.cg.discard_effect.list_self run data modify storage ui:temp temp.effect.temp2.tag.tmw.cg.discard_effect.list append from storage ui:temp temp.effect.temp2
#execute if data storage ui:temp temp.effect.temp2.tag.tmw.cg.discard_effect.list_self run tellraw @a [{"storage":"ui:temp","nbt":"temp.effect.temp2.tag.tmw.cg.discard_effect"}]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage ui:temp temp.effect.temp2.tag.tmw.cg.discard_effect
