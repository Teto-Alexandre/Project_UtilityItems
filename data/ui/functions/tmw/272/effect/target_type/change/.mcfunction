scoreboard players operation $target_type_temp ui_temp = $target_type ui_temp
scoreboard players operation $target_count_temp ui_temp = $target_count ui_temp

execute if score @s ui_tmw272_confusion matches 1.. run function ui:tmw/272/effect/target_type/change/confusion

execute if score @s ui_tmw272_blindness matches 1.. run function ui:tmw/272/effect/target_type/change/blindness

execute if score @s ui_tmw272_nausea matches 1.. run function ui:tmw/272/effect/target_type/change/nausea

execute if score @s ui_tmw272_dazzle matches 1.. run function ui:tmw/272/effect/target_type/change/dazzle
