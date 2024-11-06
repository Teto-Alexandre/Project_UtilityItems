execute as @e[tag=ui_24_1,sort=nearest,limit=1] at @s run tag @s remove ui_24_1_readonly

tellraw @a ["",{"text":"> ","color":"gray"},{"text":"通知","color":"green","bold": true},{"text":" アクセスチェストの読み取り専用を解除しました","color":"gray","bold": true}]
