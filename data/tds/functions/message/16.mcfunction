#キルログ
scoreboard players set $mod ui_calc1 4
function ui:common/rand
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で爆散した","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で粉微塵にされた","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で粉々にされた","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で消し飛ばされた","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"によって爆散した","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に粉微塵にされた","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に粉々になった","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に消し飛ばされた","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は爆散した","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は粉微塵になった","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"は粉々になった","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"は消し飛んだ","color":"white"}]

#死
function tds:death