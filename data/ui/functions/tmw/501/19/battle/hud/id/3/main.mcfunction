#
execute store result score $ilv ui_temp run scoreboard players get @s ui_tmw501_19_stat_ilv

#
execute store result score $mov ui_temp run scoreboard players get @s ui_tmw501_19_stat_mov
execute store result score $en ui_temp run scoreboard players get @s ui_tmw501_19_now_en
execute store result score $en_max ui_temp run scoreboard players get @s ui_tmw501_19_stat_en_max
execute store result score $s1 ui_temp run scoreboard players get @s ui_tmw501_19_now_s1
execute store result score $s1_max ui_temp run scoreboard players get @s ui_tmw501_19_stat_s1_max
execute store result score $s2 ui_temp run scoreboard players get @s ui_tmw501_19_now_s2
execute store result score $s2_max ui_temp run scoreboard players get @s ui_tmw501_19_stat_s2_max

#
execute store result score $rot ui_temp run data get entity @s Rotation[0] 0.1
scoreboard players remove $rot ui_temp 8
scoreboard players operation $rot ui_temp %= #36 ui_num

#
function ui:template/get_motion

#
function ui:template/text_board/open
scoreboard players set $count ui_temp 18
function ui:tmw/501/19/battle/hud/id/3/actionbar
function ui:template/text_board/bro_actionbar
function ui:template/text_board/close

# タイトル
function ui:template/text_board/open
execute as @e[tag=ui_template_text_board,limit=1] run function ui:tmw/501/19/battle/hud/id/3/title
function ui:template/text_board/bro_title
function ui:template/text_board/close
