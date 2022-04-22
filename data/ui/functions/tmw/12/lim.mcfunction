#execute if entity @a[scores={ui_tmw_id=12}] run function ui:tmw/12/lim

#誰かがid:12持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=12}] run function ui:tmw/12/main

#付属品