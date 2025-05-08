$data modify storage ui:temp temp.card.effects prepend value {$(string)}
scoreboard players add $count ui_temp 1
#$tellraw @a [{"text":"e_a: $(string)","color":"green"}]