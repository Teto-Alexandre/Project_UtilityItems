# ツールと防具に識別子を付ける

# 各自に実行
    execute as @a unless data entity @s SelectedItem.tag.ui_shortcuts run function ui:periodic/10sec_3.2

# 装備
    execute if entity @e[nbt={Inventory:[{tag:{tmw:{id:601}}}]}] run schedule function ui:tmw/601/ss 1t append