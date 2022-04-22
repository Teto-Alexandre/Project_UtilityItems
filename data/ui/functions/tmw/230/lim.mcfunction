#execute if entity @a[scores={ui_tmw_id=230}] run function ui:tmw/230/lim

#誰かがid:230持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=230}] run function ui:tmw/230/main

#付属品
    #SSロジック始動
    schedule function ui:tmw/230/ss 2t replace