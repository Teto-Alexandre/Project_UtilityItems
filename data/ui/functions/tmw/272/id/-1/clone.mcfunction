scoreboard players set $deck_overwrite ui_temp 0

execute align xyz run summon sheep ~0.5 ~ ~0.5 {NoAI:1b,Tags:["hc_deck","hc_deck_temp","deck_sheep"],Invulnerable:1b,CustomNameVisible:1b,Silent:1b}
execute if block ~ ~-1 ~ dropper run scoreboard players set $deck_overwrite ui_temp 1
execute if block ~ ~-1 ~ barrel run scoreboard players set $deck_overwrite ui_temp 1
execute if score $deck_overwrite ui_temp matches 0 run setblock ~ ~-1 ~ air replace
execute if score $deck_overwrite ui_temp matches 0 run setblock ~ ~-1 ~ dropper[facing=up] replace
execute as @e[tag=hc_deck_temp] run effect give @s resistance infinite 127 true
execute as @e[tag=hc_deck_temp] run scoreboard players set @s ui_team 6

data modify storage ui:temp temp.temp.list set from entity @s SelectedItem.tag.tmw.cg.list
data modify storage ui:temp temp.temp.list[0] merge value {Slot:0b}
data modify storage ui:temp temp.temp.list[1] merge value {Slot:1b}
data modify storage ui:temp temp.temp.list[2] merge value {Slot:2b}
data modify storage ui:temp temp.temp.list[3] merge value {Slot:3b}
data modify storage ui:temp temp.temp.list[4] merge value {Slot:4b}
data modify storage ui:temp temp.temp.list[5] merge value {Slot:5b}
data modify storage ui:temp temp.temp.list[6] merge value {Slot:6b}
data modify storage ui:temp temp.temp.list[7] merge value {Slot:7b}
data modify storage ui:temp temp.temp.list[8] merge value {Slot:8b}
execute if score $deck_overwrite ui_temp matches 0 run data modify block ~ ~-1 ~ Items set from storage ui:temp temp.temp.list
execute if score $deck_overwrite ui_temp matches 0 run data modify entity @e[tag=hc_deck_temp,limit=1] CustomName set from entity @s SelectedItem.tag.display.Name
execute if score $deck_overwrite ui_temp matches 0 run data modify block ~ ~-1 ~ CustomName set from entity @s SelectedItem.tag.display.Name
execute if score $deck_overwrite ui_temp matches 1 run data modify storage ui:temp temp.temp.list set from block ~ ~-1 ~ Items
execute if score $deck_overwrite ui_temp matches 1 run data modify entity @e[tag=hc_deck_temp,limit=1] CustomName set from block ~ ~-1 ~ CustomName

data remove storage ui:temp temp.temp

tag @e[tag=hc_deck_temp] remove hc_deck_temp

execute if score $deck_overwrite ui_temp matches 0 run tellraw @s [{"text":"[Idling] > ","color": "green"},{"text":"羊をデッキから投影しました","color": "gray"}]
execute if score $deck_overwrite ui_temp matches 1 run tellraw @s [{"text":"[Idling] > ","color": "green"},{"text":"羊をコンテナから投影しました","color": "gray"}]
playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 0

scoreboard players reset $deck_overwrite ui_temp