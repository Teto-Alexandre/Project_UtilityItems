function oh_my_dat:please

scoreboard players set $mod ui_calc1 9
function ui:common/rand
execute if score $rand_old1 ui_calc1 = $rand ui_calc1 run function ui:common/rand
execute if score $rand_old2 ui_calc1 = $rand ui_calc1 run function ui:common/rand
execute if score $rand_old1 ui_calc1 = $rand ui_calc1 run function ui:common/rand
execute if score $rand_old2 ui_calc1 = $rand ui_calc1 run function ui:common/rand
execute if score $rand_old1 ui_calc1 = $rand ui_calc1 run function ui:common/rand
execute if score $rand_old2 ui_calc1 = $rand ui_calc1 run function ui:common/rand
execute if score $rand ui_calc1 matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward append from storage ui:temp temp.death[0]
execute if score $rand ui_calc1 matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward append from storage ui:temp temp.death[1]
execute if score $rand ui_calc1 matches 2 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward append from storage ui:temp temp.death[2]
execute if score $rand ui_calc1 matches 3 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward append from storage ui:temp temp.death[3]
execute if score $rand ui_calc1 matches 4 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward append from storage ui:temp temp.death[4]
execute if score $rand ui_calc1 matches 5 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward append from storage ui:temp temp.death[5]
execute if score $rand ui_calc1 matches 6 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward append from storage ui:temp temp.death[6]
execute if score $rand ui_calc1 matches 7 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward append from storage ui:temp temp.death[7]
execute if score $rand ui_calc1 matches 8 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward append from storage ui:temp temp.death[8]

scoreboard players operation $rand_old2 ui_calc1 = $rand_old1 ui_calc1
scoreboard players operation $rand_old1 ui_calc1 = $rand ui_calc1

#tellraw @a [{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.reward"}]

execute if predicate ui:percentage/50 run function ui:tmw/272/match/player/reward