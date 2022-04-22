#execute if entity @a[scores={ui_tmw_id=10}] run function ui:tmw/10/lim

#誰かがid:10持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=10}] run function ui:tmw/10/main

#付属品
    #SSロジック始動
    function ui:tmw/10/ss