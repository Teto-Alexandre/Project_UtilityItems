data modify storage ui:temp card.list set value []

execute if data storage ui:temp card.list_import.self run data modify storage ui:temp card.list append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0]
execute if data storage ui:temp card.list_import.origin run data modify storage ui:temp card.list append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin[]
execute if data storage ui:temp card.list_import.base run data modify storage ui:temp card.list append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[]
execute if data storage ui:temp card.list_import.match run data modify storage ui:temp card.list append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[]

execute if data storage ui:temp card.list_import.hand if entity @s[type=player] run data modify storage ui:temp card.list append from entity @s Inventory[]
execute if data storage ui:temp card.list_import.hand unless entity @s[type=player] run data modify storage ui:temp card.list append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[]