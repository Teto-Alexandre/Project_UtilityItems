#execute if entity @a[scores={ui_tmw_id=15}] run function ui:tmw/15/lim

#誰かがid:15持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=15}] run function ui:tmw/15/main

#付属品