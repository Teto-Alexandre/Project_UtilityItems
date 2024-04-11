$data modify storage ui:temp temp.turn1_list append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.turn_name[{name:'$(name)'}]
execute store result score $turn_name ui_temp run data get storage ui:temp temp.turn1_list
