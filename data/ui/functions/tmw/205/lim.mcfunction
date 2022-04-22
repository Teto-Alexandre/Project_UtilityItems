#execute if entity @a[scores={ui_tmw_id=205}] run function ui:tmw/205/lim

#誰かがid:205持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=205}] run function ui:tmw/205/main

#付属品