#

#
execute at @e[tag=ui_common_mine_square] run setblock ~ ~1 ~ air
execute at @e[tag=ui_common_mine_square] run setblock ~ ~ ~ air
kill @e[tag=ui_common_mine_square]
playsound entity.generic.explode player @a ~ ~ ~ 1 1 0
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force 
