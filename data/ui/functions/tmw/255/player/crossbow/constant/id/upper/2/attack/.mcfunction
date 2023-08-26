execute unless score @s ui_tmw255_state_glitch matches 1.. at @s run particle dust 1 0 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force
execute unless score @s ui_tmw255_state_glitch matches 1.. at @s run particle dust 0 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force

scoreboard players add @s ui_tmw255_state_glitch 10

schedule function ui:tmw/255/player/crossbow/constant/id/upper/2/ss/ 1t replace
