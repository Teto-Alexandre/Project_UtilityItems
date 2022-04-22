#execute if entity @a[scores={ui_tmw_id=223}] run function ui:tmw/223/lim

#誰かがid:223持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=223}] run function ui:tmw/223/main

#付属品