#execute if entity @a[scores={ui_tmw_id=226}] run function ui:tmw/226/lim

#誰かがid:226持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=226}] run function ui:tmw/226/main

#付属品
    #SSロジック始動
    schedule function ui:tmw/226/ss 2t append