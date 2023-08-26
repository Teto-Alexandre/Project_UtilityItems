execute if predicate ui:percentage/50 run particle dust 1 0 1 1 ~ ~1 ~ 1 1 1 0 1 force @s
execute if predicate ui:percentage/50 run particle dust 0 0 0 1 ~ ~1 ~ 1 1 1 0 1 force @s
execute if score @s ui_tmw255_state_glitch matches 201.. if predicate ui:percentage/1 run particle dust 1 0 1 1 ~ ~1 ~ 1 1 1 0 1 force
execute if score @s ui_tmw255_state_glitch matches 201.. if predicate ui:percentage/1 run particle dust 0 0 0 1 ~ ~1 ~ 1 1 1 0 1 force
execute if score @s ui_tmw255_state_glitch matches 1000.. if predicate ui:percentage/10 run particle dust 1 0 1 1 ~ ~1 ~ 2 1 2 0 1 force
execute if score @s ui_tmw255_state_glitch matches 1000.. if predicate ui:percentage/10 run particle dust 0 0 0 1 ~ ~1 ~ 2 1 2 0 1 force
execute if score @s ui_tmw255_state_glitch matches 10001.. run particle dust 1 0 1 1 ~ ~1 ~ 5 2 5 0 1 force
execute if score @s ui_tmw255_state_glitch matches 10001.. run particle dust 0 0 0 1 ~ ~1 ~ 5 2 5 0 1 force

execute if predicate ui:percentage/0.1 if entity @s[type=player] run function ui:tmw/255/player/crossbow/constant/id/upper/2/give_glitch/player
execute if predicate ui:percentage/0.1 if entity @s[type=player] run function ui:tmw/255/player/crossbow/constant/id/upper/2/glitch_random/player
execute if predicate ui:percentage/0.1 if entity @s[type=player] run function ui:tmw/255/player/crossbow/constant/id/upper/2/slot_switch/player
execute if predicate ui:percentage/0.1 if entity @s[type=player] run function ui:tmw/255/player/crossbow/constant/id/upper/2/title_jack/player
execute if predicate ui:percentage/0.1 if entity @s[type=player] run function ui:tmw/255/player/crossbow/constant/id/upper/2/particle_jack/player
execute if predicate ui:percentage/0.1 run function ui:tmw/255/player/crossbow/constant/id/upper/2/self_boost/all
execute if predicate ui:percentage/0.1 run function ui:tmw/255/player/crossbow/constant/id/upper/2/area_boost/all

execute if predicate ui:percentage/25 run scoreboard players add @s ui_tmw255_state_glitch 1
scoreboard players remove @s[nbt={Inventory:[{tag:{glitch:-1}}]}] ui_tmw255_state_glitch 2
execute if predicate ui:percentage/0.1 run clear @s command_block{glitch:-1} 1
scoreboard players add @s[nbt={Inventory:[{tag:{CustomModelData:100001}}]}] ui_tmw255_state_glitch 1
scoreboard players add @s[nbt={Inventory:[{tag:{glitch:1}}]}] ui_tmw255_state_glitch 1
scoreboard players add @s[nbt={Inventory:[{tag:{glitch:2}}]}] ui_tmw255_state_glitch 10
scoreboard players add @s[nbt={Inventory:[{tag:{glitch:3}}]}] ui_tmw255_state_glitch 100