#execute if entity @a[scores={ui_tmw_id=225}] run function ui:tmw/225/lim

#誰かがid:225持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=225}] run function ui:tmw/225/main

#付属品