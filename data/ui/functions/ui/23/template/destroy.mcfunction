execute as @e[tag=ui_23_1,sort=nearest,limit=1] at @s run function ui:ui/23/st

tellraw @a ["",{"text":"> ","color":"gray"},{"text":"通知","color":"green","bold": true},{"text":" 最寄りの次元チェストを撤去しました","color":"gray","bold": true}]
