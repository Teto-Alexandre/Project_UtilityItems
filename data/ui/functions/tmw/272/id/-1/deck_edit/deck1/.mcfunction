execute if data storage ui:temp temp.list[0].tag.tmw.cg.id_deck1 run function ui:tmw/272/id/-1/deck_edit/deck1/macro with storage ui:temp temp.list[0].tag.tmw.cg

#say b

data remove storage ui:temp temp.list[0]
scoreboard players remove $editing_num ui_temp 1
execute if score $editing_num ui_temp matches 1.. run function ui:tmw/272/id/-1/deck_edit/deck1/