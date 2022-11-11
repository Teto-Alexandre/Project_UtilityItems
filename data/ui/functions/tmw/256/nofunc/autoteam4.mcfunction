# 即席チーム
    scoreboard players set @a[tag=!ui_noteam] ui_team 0
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 2
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 4
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 2
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 4
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 2
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 4
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 2
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 4
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 2
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 4
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 2
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!ui_noteam,scores={ui_team=0}] ui_team 4

# 放送
    playsound block.note_block.hat player @a[tag=!ui_noteam] ~ ~ ~ 1 1 1
    tellraw @a[tag=!ui_noteam,scores={ui_team=1}] ["",{"text":"system>> ","color":"white"},{"text":"あなたは","color":"gray"},{"text":" BLUE ","color":"aqua"},{"text":"チームです","color":"gray"}]
    tellraw @a[tag=!ui_noteam,scores={ui_team=2}] ["",{"text":"system>> ","color":"white"},{"text":"あなたは","color":"gray"},{"text":" RED ","color":"light_purple"},{"text":"チームです","color":"gray"}]
    tellraw @a[tag=!ui_noteam,scores={ui_team=3}] ["",{"text":"system>> ","color":"white"},{"text":"あなたは","color":"gray"},{"text":" YELLOW ","color":"yellow"},{"text":"チームです","color":"gray"}]
    tellraw @a[tag=!ui_noteam,scores={ui_team=4}] ["",{"text":"system>> ","color":"white"},{"text":"あなたは","color":"gray"},{"text":" GREEN ","color":"green"},{"text":"チームです","color":"gray"}]