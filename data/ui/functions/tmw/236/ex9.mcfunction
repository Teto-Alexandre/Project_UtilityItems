#
    execute store result score $team ui_temp run scoreboard players get @s ui_team

# 活性化
    playsound entity.egg.throw player @a ~ ~ ~ 1 1 0

#
    fill ~-1 ~-2 ~ ~1 ~-2 ~ light_blue_stained_glass replace #ui:nocol
    fill ~ ~-2 ~-1 ~ ~-2 ~1 light_blue_stained_glass replace #ui:nocol

#
    kill @s[scores={ui_uses=30..}]