data modify storage ui:temp temp.draw_card set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin_temp[0]

# 引いた時の効果を AfterEffect に追加
#execute as @e[tag=tmw272_temp_steal] run function oh_my_dat:please
execute if data storage ui:temp temp.draw_card.tag.tmw.cg.deck_effect.copy_display run data modify storage ui:temp temp.draw_card.tag.tmw.cg.deck_effect.name set from storage ui:temp temp.draw_card.tag.display.Name
execute if data storage ui:temp temp.draw_card.tag.tmw.cg.deck_effect.copy_display run data modify storage ui:temp temp.draw_card.tag.tmw.cg.deck_effect.lore set from storage ui:temp temp.draw_card.tag.display.Lore
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage ui:temp temp.draw_card.tag.tmw.cg.deck_effect
#execute if entity @e[tag=tmw272_temp_steal] run function oh_my_dat:please
