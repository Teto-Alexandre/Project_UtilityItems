#execute if entity @a[scores={ui_tmw_id=304}] run function ui:tmw/304/lim

#誰かがid:304持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=304}] run function ui:tmw/304/main

#付属品
    schedule function ui:tmw/304/ss 1t append
