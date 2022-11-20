#誰かがid:255持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=255},nbt={SelectedItem:{id:"minecraft:crossbow"}}] run function ui:tmw/255/player/crossbow/main
    execute as @a[scores={ui_tmw_id=255},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function ui:tmw/255/player/idling.main
    execute as @a[scores={ui_tmw_id=255},nbt={SelectedItem:{tag:{tmw:{type:-1}}}}] run function ui:tmw/255/player/resource/-1
    execute as @a[scores={ui_tmw_id=255},nbt={SelectedItem:{tag:{tmw:{type:-2}}}}] run function ui:tmw/255/player/resource/-2
    execute as @a[scores={ui_tmw_id=255},nbt={SelectedItem:{tag:{tmw:{type:-3}}}}] run function ui:tmw/255/player/resource/-3

#付属品
    schedule function ui:tmw/255/player/crossbow/ss/1 1t append
