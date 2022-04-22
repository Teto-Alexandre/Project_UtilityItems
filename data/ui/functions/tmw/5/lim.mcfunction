#execute if entity @a[scores={ui_tmw_id=5}] run function ui:tmw/5/lim

#誰かがid:5持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=5}] run function ui:tmw/5/main

#付属品
    execute as @e[tag=tmw_5_1] at @s run function ui:tmw/5/5_1
    execute as @e[tag=tmw_5_2] at @s run function ui:tmw/5/5_2