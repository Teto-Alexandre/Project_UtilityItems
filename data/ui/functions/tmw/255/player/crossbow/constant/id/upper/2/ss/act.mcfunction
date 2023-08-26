execute at @s anchored eyes positioned ^ ^ ^ run particle dust 1 0 1 1 ~ ~ ~ 0.3 0.3 0.3 0 5 force
execute at @s anchored eyes positioned ^ ^ ^ run particle dust 0 0 0 1 ~ ~ ~ 0.3 0.3 0.3 0 5 force

execute if predicate ui:percentage/5 if entity @s[type=player] run function ui:tmw/255/player/crossbow/constant/id/upper/2/give_glitch/player
execute if predicate ui:percentage/5 if entity @s[type=player] run function ui:tmw/255/player/crossbow/constant/id/upper/2/glitch_random/player
execute if predicate ui:percentage/5 if entity @s[type=player] run function ui:tmw/255/player/crossbow/constant/id/upper/2/slot_switch/player
execute if predicate ui:percentage/5 if entity @s[type=player] run function ui:tmw/255/player/crossbow/constant/id/upper/2/title_jack/player
execute if predicate ui:percentage/5 if entity @s[type=player] run function ui:tmw/255/player/crossbow/constant/id/upper/2/particle_jack/player
execute if predicate ui:percentage/1 run function ui:tmw/255/player/crossbow/constant/id/upper/2/self_boost/all
execute if predicate ui:percentage/5 run function ui:tmw/255/player/crossbow/constant/id/upper/2/area_boost/all
execute if predicate ui:percentage/5 run function ui:tmw/255/player/crossbow/constant/id/upper/2/self_damage/all

scoreboard players remove @s ui_tmw255_state_glitch 1