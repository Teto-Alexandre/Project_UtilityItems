data modify storage ui:temp temp.card.effects append from storage ui:temp temp.card.effects2[0]
data remove storage ui:temp temp.card.effects2[0]

scoreboard players remove $count_temp ui_temp 1
execute if score $count_temp ui_temp matches 1.. run function ui:tmw/272/id/1/misc/duplication/copy