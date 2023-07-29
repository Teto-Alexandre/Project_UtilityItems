execute unless score $is_temp2 ui_temp matches 35..129 if score $is ui_temp matches 10..980 run function ui:common/particle/ss/downer/10024/eye2.1
execute unless score $is_temp2 ui_temp matches 30..129 if score $is ui_temp matches 20.. run function ui:common/particle/ss/downer/10024/eye2.2

execute if score $is_temp2 ui_temp matches 35..129 if score $is ui_temp matches 10..980 run function ui:common/particle/ss/downer/10024/eye2.1red
execute if score $is_temp2 ui_temp matches 30..129 if score $is ui_temp matches 20.. run function ui:common/particle/ss/downer/10024/eye2.2red