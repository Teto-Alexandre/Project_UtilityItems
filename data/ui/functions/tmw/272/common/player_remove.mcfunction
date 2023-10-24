scoreboard players reset @s ui_tmw272_link_id
tag @s remove tmw272_active
tag @s remove tmw272_spectate
tag @s remove ui_temp_players
execute at @s run kill @e[type=item,tag=tmw272_dropitem_card,distance=..5]
function ui:template/inventory/pull

function oh_my_dat:please
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.LastUsed
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active

team leave @s