execute as @e[tag=ui_23_1,sort=nearest,limit=1] at @s run tag @s add ui_23_1_readonly

tellraw @a ["",{"text":"> ","color":"gray"},{"text":"通知","color":"green","bold": true},{"text":" 次元チェストを読み取り専用にしました","color":"gray","bold": true}]
