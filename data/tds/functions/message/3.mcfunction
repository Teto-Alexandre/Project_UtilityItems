#キルログ
scoreboard players set $mod ui_calc1 4
function ui:common/rand
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で燃やされて死んだ","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で真っ黒焦げにされた","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]に焼き尽くされた","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で灰になった","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に燃やされて死んだ","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に真っ黒焦げにされた","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に焼き尽くされた","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に灰にされた","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は燃え尽きた","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は燃やされて死んだ","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"は真っ黒焦げになった","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"は灰になった","color":"white"}]

#死
function tds:death