#誰かがid:3持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=256}] run function ui:tmw/256/main

#付属品
    schedule function ui:tmw/256/ss/1 1t append
    schedule function ui:tmw/256/ss/2 1t append
    schedule function ui:tmw/256/ss/3 1t append
