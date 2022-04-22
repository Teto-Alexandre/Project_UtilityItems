#execute if entity @a[scores={ui_tmw_id=224}] run function ui:tmw/224/lim

#誰かがid:224持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=224}] run function ui:tmw/224/main

#付属品
    #SSロジック始動
    function ui:tmw/224/ss
