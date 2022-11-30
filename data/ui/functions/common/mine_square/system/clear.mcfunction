#

#
execute at @e[tag=ui_temp_obj] run setblock ~ ~1 ~ air
execute at @e[tag=ui_temp_obj] run setblock ~ ~ ~ air
kill @e[tag=ui_temp_obj]
playsound ui.toast.challenge_complete player @a ~ ~ ~ 1 1 1
tellraw @a [{"selector":"@a[tag=ui_temp_player]"},{"text":"がマインスイーパーをクリア！"}]