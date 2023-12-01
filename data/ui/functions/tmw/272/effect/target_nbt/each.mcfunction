data modify storage ui:temp temp.temp.target_nbt set from storage ui:temp temp.effect.target_nbt
execute store result score $target_nbt_check ui_temp run data modify storage ui:temp temp.temp.target_nbt.tag merge from entity @s

execute unless score $target_nbt_check ui_temp matches 1 run tag @s add tmw272_temp_card_effect_target_nbt
