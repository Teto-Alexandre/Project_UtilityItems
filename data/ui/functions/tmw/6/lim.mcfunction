#execute if entity @a[scores={ui_tmw_id=6}] run function ui:tmw/6/lim

#誰かがid:6持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=6}] run function ui:tmw/6/main

#付属品
    #SSロジック始動
    schedule function ui:tmw/6/ss 1t append