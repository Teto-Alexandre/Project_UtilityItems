scoreboard players operation $mod ui_calc1 = @s ui_tmw272_karma
function ui:common/rand

execute at @e[tag=ui_temp_players,tag=!tmw272_spectate] run particle dust 1 0 1 2 ~ ~0.9 ~ 0.5 0.5 0.5 0 10 force
playsound entity.generic.explode player @a ~ ~ ~ 1 2 0

execute if score $rand ui_calc1 < @s ui_tmw272_karma run function ui:tmw/272/common/player_remove

scoreboard players remove $players_count ui_temp 1