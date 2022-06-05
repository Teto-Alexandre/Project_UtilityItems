# 即席チーム
    scoreboard players set @a ui_team 0
    scoreboard players set @r[scores={ui_team=0}] ui_team 1
    scoreboard players set @r[scores={ui_team=0}] ui_team 2
    scoreboard players set @r[scores={ui_team=0}] ui_team 1
    scoreboard players set @r[scores={ui_team=0}] ui_team 2
    scoreboard players set @r[scores={ui_team=0}] ui_team 1
    scoreboard players set @r[scores={ui_team=0}] ui_team 2
    scoreboard players set @r[scores={ui_team=0}] ui_team 1
    scoreboard players set @r[scores={ui_team=0}] ui_team 2
    scoreboard players set @r[scores={ui_team=0}] ui_team 1
    scoreboard players set @r[scores={ui_team=0}] ui_team 2
    scoreboard players set @r[scores={ui_team=0}] ui_team 1
    scoreboard players set @r[scores={ui_team=0}] ui_team 2
    scoreboard players set @r[scores={ui_team=0}] ui_team 1
    scoreboard players set @r[scores={ui_team=0}] ui_team 2
    scoreboard players set @r[scores={ui_team=0}] ui_team 1
    scoreboard players set @r[scores={ui_team=0}] ui_team 2
    scoreboard players set @r[scores={ui_team=0}] ui_team 1
    scoreboard players set @r[scores={ui_team=0}] ui_team 2
    scoreboard players set @r[scores={ui_team=0}] ui_team 1
    scoreboard players set @r[scores={ui_team=0}] ui_team 2
    scoreboard players set @r[scores={ui_team=0}] ui_team 1
    scoreboard players set @r[scores={ui_team=0}] ui_team 2

# 放送
    playsound block.note_block.hat player @a ~ ~ ~ 1 1 1
    tellraw @a[scores={ui_team=1}] ["",{"text":"system>> ","color":"white"},{"text":"あなたは","color":"gray"},{"text":" BLUE ","color":"aqua"},{"text":"チームです","color":"gray"}]
    tellraw @a[scores={ui_team=2}] ["",{"text":"system>> ","color":"white"},{"text":"あなたは","color":"gray"},{"text":" RED ","color":"light_purple"},{"text":"チームです","color":"gray"}]