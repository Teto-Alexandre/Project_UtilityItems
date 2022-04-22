#execute if entity @a[scores={ui_tmw_id=233}] run function ui:tmw/233/lim

#誰かがid:233持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=233}] if entity @s[nbt=!{SelectedItem:{tag:{tmw:{temp:-1}}}}] run function ui:tmw/233/main

#付属品
    schedule function ui:tmw/233/ss 1t append