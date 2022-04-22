# よく1ポイントが失われるが多分マイクラが悪い

# クリックで出し入れ
execute as @s[scores={ui_use1=1..,ui_st=0},nbt={SelectedItem:{tag:{tmw:{id:227}}}}] at @s run function ui:tmw/227/putout
execute as @s[scores={ui_use1=1..,ui_st=1..},nbt={SelectedItem:{tag:{tmw:{id:227}}}}] at @s run function ui:tmw/227/putin

# 失敗
execute at @s[scores={ui_use1=1..},tag=!ui_temp_success] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 0.8 1 0
tag @s[tag=ui_temp_success] remove ui_temp_success