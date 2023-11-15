summon sheep ~ ~ ~ {NoAI:1,Tags:["hc_deck","hc_deck_temp"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute as @e[tag=hc_deck_temp] run effect give @s resistance infinite 127 true
execute as @e[tag=hc_deck_temp] run scoreboard players set @s ui_team 6
execute as @e[tag=hc_deck_temp] run function oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin set from entity @s SelectedItem.tag.tmw.cg.list
data modify entity @e[tag=hc_deck_temp,limit=1] CustomName set from entity @s SelectedItem.tag.display.Name

tag @e[tag=hc_deck_temp] remove hc_deck_temp
