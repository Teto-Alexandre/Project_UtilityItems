data merge storage ui:common {input:{Mode:"dist_point"}}
function ui:common/distance
scoreboard players operation $Return ui_temp /= #100 ui_num

data merge storage ui:common {input:{Mode:"create",Var:33,Var2:-1,Var3:-1}}
execute store result storage ui:common input.Var2 int 1 run scoreboard players get @s ui_team
execute store result storage ui:common input.Var3 int 1 run scoreboard players get $Return ui_temp

#tellraw @a [{"score":{"name": "$particle","objective": "ui_temp"}},{"text":" "},{"score":{"name": "$Return","objective": "ui_temp"}}]

execute facing entity @s feet positioned ^ ^ ^10000 facing entity @s feet positioned as @s positioned ~ ~1 ~ run function ui:common/particle