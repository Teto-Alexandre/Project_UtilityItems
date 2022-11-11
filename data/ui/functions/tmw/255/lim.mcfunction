#誰かがid:3持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=255},nbt={SelectedItem:{id:"minecraft:crossbow"}}] run function ui:tmw/255/player/crossbow/main
    execute as @a[scores={ui_tmw_id=255},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function ui:tmw/255/player/idling.main

#付属品
    schedule function ui:tmw/255/player/crossbow/ss/1 1t append
