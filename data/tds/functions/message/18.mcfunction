#キルログ
scoreboard players set $mod ui_calc1 7
function ui:common/rand
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]でズタボロになった","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]にぺしゃんこにされた","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]で存在を揺るがされた","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]によって追放された","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 4 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]で命の灯を消された","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 5 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]でこの世に居られなくなった","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 6 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]で崩れ去った","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"にズタボロにされた","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"にぺしゃんこにされた","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に存在を揺るがされた","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"によって追放された","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 4 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に命の灯を消された","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 5 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"にこの世に居られなくされた","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 6 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に崩された","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"はズタボロになった","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"はぺしゃんこになった","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"は存在を揺るがされた","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"は追放された","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 4 run tellraw @a ["",{"selector":"@s"},{"text":"は命の灯を消された","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"はこの世に居られなくなった","color":"white"}]
execute unless entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 4 run tellraw @a ["",{"selector":"@s"},{"text":"は崩れ去った","color":"white"}]

#死
function tds:death