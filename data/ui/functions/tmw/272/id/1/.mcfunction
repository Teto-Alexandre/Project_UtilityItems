function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems append from entity @s SelectedItem

# カードは消す
item replace entity @s weapon.mainhand with air

#scoreboard players set @s ui_ct 20