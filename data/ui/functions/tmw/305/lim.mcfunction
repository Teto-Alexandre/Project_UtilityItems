#execute if entity @a[scores={ui_tmw_id=305}] run function ui:tmw/305/lim

#誰かがid:305持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=305},tag=!tmw_oh_n,nbt=!{SelectedItem:{tag:{Damage:0}}}] run function ui:tmw/305/sub
    execute as @a[scores={ui_tmw_id=305},tag=tmw_oh_n] run function ui:tmw/305/only
    execute as @a[scores={ui_tmw_id=305},tag=!tmw_oh_n,nbt={SelectedItem:{tag:{Damage:0}}}] run function ui:tmw/305/main

#付属品
    schedule function ui:tmw/305/ss 1t append
