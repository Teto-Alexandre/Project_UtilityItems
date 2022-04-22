#execute if entity @a[scores={ui_tmw_id=302}] run function ui:tmw/302/lim

#誰かがid:302持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=302}] run function ui:tmw/302/main

#付属品
    #SSロジック始動
    schedule function ui:tmw/302/ss 1t append
