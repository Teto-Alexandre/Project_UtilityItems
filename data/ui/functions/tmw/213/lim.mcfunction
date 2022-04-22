#execute if entity @a[scores={ui_tmw_id2=213}] run function ui:tmw/213/lim

#誰かがid:213持ったら各自に実行する
    execute as @a[scores={ui_tmw_id2=213}] at @s run function ui:tmw/213/main

#付属品