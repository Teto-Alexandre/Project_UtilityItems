function oh_my_dat:please
execute if entity @s[type=player] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems append from entity @s SelectedItem
execute if entity @s[type=!player] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[0]
#execute if entity @s[type=!player] run say a

# カードは消す
execute if entity @s[type=player] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[-1].tag.tmw.cg.not_consume run item replace entity @s weapon.mainhand with air
execute if entity @s[type=!player] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[-1].tag.tmw.cg.not_consume run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[0]

#scoreboard players set @s ui_ct 20