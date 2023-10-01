data modify storage ui:temp temp.card.effects2 set from storage ui:temp temp.card.effects
scoreboard players set @s ui_tmw272_duplication 0

scoreboard players operation $count_temp ui_temp = $count ui_temp
execute if score $count_temp ui_temp matches 1.. run function ui:tmw/272/id/1/misc/duplication/copy

scoreboard players remove $duplication ui_temp 1
execute if score $duplication ui_temp matches 1.. run function ui:tmw/272/id/1/misc/duplication/

execute store result score $count ui_temp run data get storage ui:temp temp.card.effects