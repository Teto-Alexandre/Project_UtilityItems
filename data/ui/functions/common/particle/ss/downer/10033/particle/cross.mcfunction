particle minecraft:dust 1 0 0 0.7 ~ ~1 ~ 0 1 0 0 100 force @a

scoreboard players set $mod ui_calc1 2
function ui:common/rand
execute if score $rand ui_calc1 matches 0 run particle minecraft:dust 1 0 0 0.7 ~ ~2.5 ~ 0.6 0 0 0 60 force @a
execute if score $rand ui_calc1 matches 1 run particle minecraft:dust 1 0 0 0.7 ~ ~2.5 ~ 0 0 0.6 0 60 force @a

data merge storage ui:common {input:{Mode:"create",Var:25,Var2:8}}
#execute if entity @s[tag=ui_temp_boost] run data modify storage ui:common input.Var2 set value 7
execute positioned ~ ~0.1 ~ rotated ~ 90 run function ui:common/particle