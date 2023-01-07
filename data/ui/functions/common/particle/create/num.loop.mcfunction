# 召喚
    summon marker ~ ~ ~ {Tags:["ui","ui_common_particle","ui_common_particle_unpower"]}
    scoreboard players remove $num ui_temp 1

#
    execute if score $num ui_temp matches 1.. run function ui:common/particle/create/num.loop
