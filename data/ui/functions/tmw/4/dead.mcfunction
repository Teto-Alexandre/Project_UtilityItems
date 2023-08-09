gamerule showDeathMessages false

scoreboard players set @s ui_tmw601_accessory 0
tellraw @a ["",{"selector":"@s"},{"text":"は裁きにより完全に破壊された","color":"white"}]
data merge storage ui:common {input:{Mode:"create",Var:-10033,Var2:2,Num:1}}
execute at @s run function ui:common/particle
kill @s

gamerule showDeathMessages true
