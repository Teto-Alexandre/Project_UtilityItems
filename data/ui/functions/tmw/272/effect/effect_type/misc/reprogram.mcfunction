# デッキを入れ替える
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[1] set from entity @s Inventory[0]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[2] set from entity @s Inventory[1]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[3] set from entity @s Inventory[2]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[4] set from entity @s Inventory[3]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[5] set from entity @s Inventory[4]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[6] set from entity @s Inventory[5]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[7] set from entity @s Inventory[6]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[8] set from entity @s Inventory[7]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[1].tag.StackUUID
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[1].tag.IsCG1
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[2].tag.StackUUID
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[2].tag.IsCG1
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[3].tag.StackUUID
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[3].tag.IsCG1
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[4].tag.StackUUID
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[4].tag.IsCG1
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[5].tag.StackUUID
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[5].tag.IsCG1
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[6].tag.StackUUID
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[6].tag.IsCG1
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[7].tag.StackUUID
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[7].tag.IsCG1
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[8].tag.StackUUID
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base[8].tag.IsCG1

execute unless data storage ui:temp temp.effect.mute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"がデッキを"},{"text": "再構築した！"}]
