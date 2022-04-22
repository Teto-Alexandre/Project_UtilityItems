# 発動
    execute as @s[level=1..,nbt={SelectedItem:{tag:{tmw:{type:1}}}}] run function ui:tmw/220/t1
    execute as @s[level=2..,nbt={SelectedItem:{tag:{tmw:{type:2}}}}] run function ui:tmw/220/t2
    execute as @s[level=3..,nbt={SelectedItem:{tag:{tmw:{type:3}}}}] run function ui:tmw/220/t3

# 発動できなかったの？
    execute as @s[tag=!ui_temp] run playsound block.dispenser.fail player @a ~ ~ ~ 0.6 1 0
    execute as @s[tag=!ui_temp] run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.05 5
    tag @s[tag=ui_temp] remove ui_temp
