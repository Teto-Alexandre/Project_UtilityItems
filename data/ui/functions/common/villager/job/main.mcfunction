#

#
execute store result score $num ui_temp run data get storage ui:common input.Num

#VillagerData:{profession:"farmer",level:2,type:"plains"}
execute if score $num ui_temp matches 1 run data merge entity @s {}
