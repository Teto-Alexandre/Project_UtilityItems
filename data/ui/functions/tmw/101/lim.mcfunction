#execute if entity @a[scores={ui_tmw_id=101}] run function ui:tmw/101/lim

#誰かがid:101持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=101}] run function ui:tmw/101/main

#付属品
    #SSロジック始動
    function ui:tmw/101/ss