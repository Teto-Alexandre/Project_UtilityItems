#
    execute store result score $team ui_temp run scoreboard players get @s ui_team

# 活性化
    playsound entity.egg.throw player @a ~ ~ ~ 1 1 0

#
    fill ~-1 ~-2 ~ ~1 ~-2 ~ white_wool replace #ui:nocol
    fill ~ ~-2 ~-1 ~ ~-2 ~1 white_wool replace #ui:nocol

#
    kill @s[scores={ui_is2=28..}]