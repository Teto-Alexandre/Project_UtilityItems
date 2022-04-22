#execute if entity @a[scores={ui_tmw_id2=210}] run function ui:tmw/210/lim

#誰かがid:210持ったら各自に実行する
    execute as @a[scores={ui_tmw_id2=210}] at @s run function ui:tmw/210/main

#付属品