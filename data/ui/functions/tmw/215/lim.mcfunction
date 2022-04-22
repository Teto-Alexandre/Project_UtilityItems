#execute if entity @a[scores={ui_tmw_id2=215}] run function ui:tmw/215/lim

#誰かがid:215持ったら各自に実行する
    execute as @a[scores={ui_tmw_id2=215}] at @s run function ui:tmw/215/main

#付属品