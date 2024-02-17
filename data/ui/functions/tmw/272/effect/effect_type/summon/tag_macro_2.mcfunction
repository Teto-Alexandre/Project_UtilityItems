data modify entity @s NoAI set value 1
data modify entity @s Invulnerable set value 1b
data modify entity @s CustomNameVisible set value 1b
data modify entity @s Silent set value 1b

execute unless data entity @s Tags run data modify entity @s Tags set value ["hc_deck","summoned_nocount","summoned_delete","hc_deck_temp","ui_temp_players"]
execute if data entity @s Tags run data modify entity @s Tags append value hc_deck
execute if data entity @s Tags run data modify entity @s Tags append value summoned_nocount
execute if data entity @s Tags run data modify entity @s Tags append value summoned_delete
execute if data entity @s Tags run data modify entity @s Tags append value hc_deck_temp
execute if data entity @s Tags run data modify entity @s Tags append value ui_temp_players