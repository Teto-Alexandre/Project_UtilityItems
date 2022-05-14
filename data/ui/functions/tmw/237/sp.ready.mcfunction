item modify entity @s weapon.mainhand ui:gun/add_glow
playsound entity.player.levelup player @a ~ ~ ~ 1 1.5 0
particle firework ~ ~1 ~ 0.5 0.5 0.5 0.03 10 normal
scoreboard players set $changed ui_temp 1
scoreboard players set $sp ui_temp 1
