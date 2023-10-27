data modify storage ui:temp card.name set from storage ui:temp cards[0].tag.display.Name
data modify storage ui:temp card.lore set from storage ui:temp cards[0].tag.display.Lore

scoreboard players set $broadcast_type ui_temp -1

function ui:tmw/272/effect/broadcast/

data remove storage ui:temp cards[0]
scoreboard players add $bro_card_count ui_temp 1
execute if score $bro_card_count ui_temp matches ..8 run function ui:tmw/272/id/-1/debug/bro_list.2