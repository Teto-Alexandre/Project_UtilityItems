execute align xyz run summon sheep ~0.5 ~ ~0.5 {NoAI:1,Tags:["hc_deck","hc_deck_temp","deck_sheep"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
setblock ~ ~-1 ~ air replace
setblock ~ ~-1 ~ dropper replace
execute as @e[tag=hc_deck_temp] run effect give @s resistance infinite 127 true
execute as @e[tag=hc_deck_temp] run scoreboard players set @s ui_team 6

data modify block ~ ~-1 ~ Items set value []
data modify block ~ ~-1 ~ Items append from entity @s SelectedItem.tag.tmw.cg.list[0]
data modify block ~ ~-1 ~ Items append from entity @s SelectedItem.tag.tmw.cg.list[1]
data modify block ~ ~-1 ~ Items append from entity @s SelectedItem.tag.tmw.cg.list[2]
data modify block ~ ~-1 ~ Items append from entity @s SelectedItem.tag.tmw.cg.list[3]
data modify block ~ ~-1 ~ Items append from entity @s SelectedItem.tag.tmw.cg.list[4]
data modify block ~ ~-1 ~ Items append from entity @s SelectedItem.tag.tmw.cg.list[5]
data modify block ~ ~-1 ~ Items append from entity @s SelectedItem.tag.tmw.cg.list[6]
data modify block ~ ~-1 ~ Items append from entity @s SelectedItem.tag.tmw.cg.list[7]
data modify block ~ ~-1 ~ Items append from entity @s SelectedItem.tag.tmw.cg.list[8]
data modify entity @e[tag=hc_deck_temp,limit=1] CustomName set from entity @s SelectedItem.tag.display.Name

tag @e[tag=hc_deck_temp] remove hc_deck_temp
