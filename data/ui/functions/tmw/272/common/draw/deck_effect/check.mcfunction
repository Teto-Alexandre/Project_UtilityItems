#
function oh_my_dat:please

#
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin_temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin

#
function ui:tmw/272/common/draw/deck_effect/burn

#
data remove storage ui:temp temp.draw_card
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin_temp