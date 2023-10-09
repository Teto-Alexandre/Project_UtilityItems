data remove storage ui:temp temp.temp.list2[0]

data modify storage ui:cg1 temp.list append from storage ui:cg1 temp.list[0]
data remove storage ui:cg1 temp.list[0]
#tellraw @a {"text":"a","color": "aqua"}

scoreboard players remove $rand ui_calc1 1
execute if score $rand ui_calc1 matches 1.. run function ui:tmw/272/common/create/shuffle/2.burn