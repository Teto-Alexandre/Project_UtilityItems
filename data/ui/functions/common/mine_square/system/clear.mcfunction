#

#
execute at @e[tag=ui_common_mine_square] run setblock ~ ~1 ~ air
execute at @e[tag=ui_common_mine_square] run setblock ~ ~ ~ air
kill @e[tag=ui_common_mine_square]
playsound ui.toast.challenge_complete player @a ~ ~ ~ 1 1 1
say マインスイーパー クリア！