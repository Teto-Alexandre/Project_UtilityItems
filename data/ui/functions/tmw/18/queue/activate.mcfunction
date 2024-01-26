execute unless data storage ui:temp skill.type run data modify storage ui:temp skill.type set value "p"
execute if data storage ui:temp skill{type:"p"} run function ui:tmw/18/macro/way
execute if data storage ui:temp skill{type:"q"} if entity @s[tag=tmw_drop_n] run function ui:tmw/18/macro/way
execute if data storage ui:temp skill{type:"qs"} if entity @s[tag=tmw_drop_s] run function ui:tmw/18/macro/way
execute if data storage ui:temp skill{type:"f"} if entity @s[tag=tmw_oh_n] run function ui:tmw/18/macro/way
execute if data storage ui:temp skill{type:"fs"} if entity @s[tag=tmw_oh_s] run function ui:tmw/18/macro/way
execute if data storage ui:temp skill{type:"s"} if score @s ui_st matches 1.. run function ui:tmw/18/macro/way
execute if data storage ui:temp skill{type:"sc"} if score @s ui_stc matches 1.. run function ui:tmw/18/macro/way
execute if data storage ui:temp skill{type:"u"} if entity @s[tag=tmw_using_item] run function ui:tmw/18/macro/way
execute if data storage ui:temp skill{type:"ds"} if entity @s[tag=tmw_double_sneak] run function ui:tmw/18/macro/way
