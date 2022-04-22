# アイテムの登録,amount:0
execute as @s[scores={ui_use1=1..}] if entity @s[nbt=!{SelectedItem:{tag:{tmw:{amount:0}}}}] at @s run function ui:tmw/226/putin
execute as @s[scores={ui_use1=1..},nbt={Inventory:[{Slot:-106b}]}] if entity @s[nbt={SelectedItem:{tag:{tmw:{amount:0}}}}] at @s run function ui:tmw/226/set

# 取り出し
execute as @s[tag=tmw_oh_n,nbt=!{SelectedItem:{tag:{tmw:{amount:0}}}}] at @s run function ui:tmw/226/act
execute as @s[tag=tmw_oh_s,nbt=!{SelectedItem:{tag:{tmw:{amount:0}}}}] at @s run function ui:tmw/226/act2

# 失敗
execute at @s[scores={ui_use1=1..},tag=!ui_temp_success] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 0.8 1 0
tag @s[tag=ui_temp_success] remove ui_temp_success