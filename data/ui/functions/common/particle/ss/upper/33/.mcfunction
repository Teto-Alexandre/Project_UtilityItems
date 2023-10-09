#

#
#tellraw @a [{"score":{"name": "@s","objective": "ui_is3"}}]

execute if score @s ui_is3 matches 201.. run scoreboard players set @s ui_is3 200
execute if score @s ui_is3 matches 5.. run function ui:common/particle/ss/upper/33/laser
