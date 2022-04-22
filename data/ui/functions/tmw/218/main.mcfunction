#=======================================================================================

#投げた瞬間に出現したウキをタグ付け
    execute at @a[scores={ui_use_frod=1..},nbt={SelectedItem:{tag:{tmw:{id:218,type:1}}}}] as @e[tag=!tmw_218_1,type=fishing_bobber,distance=..3] run function ui:tmw/218/set1
    execute at @a[scores={ui_use_frod=1..},nbt={SelectedItem:{tag:{tmw:{id:218,type:2}}}}] as @e[tag=!tmw_218_2,type=fishing_bobber,distance=..3] run function ui:tmw/218/set2
    execute at @a[scores={ui_use_frod=1..},nbt={SelectedItem:{tag:{tmw:{id:218,type:3}}}}] as @e[tag=!tmw_218_3,type=fishing_bobber,distance=..3] run function ui:tmw/218/set3
    execute at @a[scores={ui_use_frod=1..},nbt={SelectedItem:{tag:{tmw:{id:218,type:4}}}}] as @e[tag=!tmw_218_4,type=fishing_bobber,distance=..3] run function ui:tmw/218/set4
    execute at @a[scores={ui_use_frod=1..},nbt={SelectedItem:{tag:{tmw:{id:218,type:5}}}}] as @e[tag=!tmw_218_5,type=fishing_bobber,distance=..3] run function ui:tmw/218/set5
    execute at @a[scores={ui_use_frod=1..},nbt={SelectedItem:{tag:{tmw:{id:218,type:6}}}}] as @e[tag=!tmw_218_6,type=fishing_bobber,distance=..3] run function ui:tmw/218/set6
    execute at @a[scores={ui_use_frod=1..},nbt={SelectedItem:{tag:{tmw:{id:218,type:7}}}}] as @e[tag=!tmw_218_7,type=fishing_bobber,distance=..3] run function ui:tmw/218/set7
    scoreboard players reset @a[scores={ui_use_frod=1..}] ui_use_frod

#タイムカウントが1入ったらチャージ
    execute as @e[tag=tmw_218_1,scores={ui_is=0..}] at @s run function ui:tmw/218/bobber1
    execute as @e[tag=tmw_218_2,scores={ui_is=0..}] at @s run function ui:tmw/218/bobber2
    execute as @e[tag=tmw_218_5,scores={ui_is=0..}] at @s run function ui:tmw/218/bobber5
    execute as @e[tag=tmw_218_7,scores={ui_is=0..}] at @s run function ui:tmw/218/bobber7

#=======================================================================================