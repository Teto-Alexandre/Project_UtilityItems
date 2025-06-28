#give @p minecraft:iron_axe{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle:{laser:1,target:2},effects:[{input:"invulnerable",var:3}]}},HideFlags:255,display:{Name:'[{"text":"無敵になるv3","italic":false,"color":"white"}]',Lore:['[{"text":"自身の","color":"gray","italic":false},{"text":"【無敵】","color":"yellow","italic":false},{"text":"+3","color":"gray","italic":false}]']}}

#give @p minecraft:structure_block{HideFlags:255,display:{Lore:["自身の/burn//freeze/+1"],Name:'[{"text":"1:サンプルカード","italic":false,"color":"white"}]'},tmw:{cg:{cost:1,effects:[]},enableQ:1,id:272,type:1}}

scoreboard players set $mode ui_temp 1

data modify storage ui:temp temp.id set from entity @s SelectedItem.id
data modify storage ui:temp temp.tag set from entity @s SelectedItem.tag
data modify storage ui:temp temp.lore set from storage ui:temp temp.tag.display.Lore
data modify storage ui:temp temp.lore_re set value []

execute store result score $count ui_temp run data get storage ui:temp temp.lore
function ui:tmw/272/_creator/macro/lore_color

data modify storage ui:temp temp.tag.display.Lore set from storage ui:temp temp.lore_re
function ui:tmw/272/_creator/macro/give_item with storage ui:temp temp
data remove storage ui:temp temp




