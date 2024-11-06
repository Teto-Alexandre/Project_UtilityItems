execute as @e[tag=ui_24_1,sort=nearest,limit=1] at @s run function ui:ui/24/st

tellraw @a ["",{"text":"> ","color":"gray"},{"text":"通知","color":"green","bold": true},{"text":" 最寄りのアクセスチェストを撤去しました","color":"gray","bold": true}]
