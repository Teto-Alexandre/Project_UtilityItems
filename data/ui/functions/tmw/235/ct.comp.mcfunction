data modify storage ui:beacongametemp value set value 0
item modify entity @s weapon.mainhand ui:gun/value/now.ct
execute if score $reload ui_temp matches 1 run function ui:tmw/235/ct.comp.reload