#キルログ
scoreboard players set $mod ui_calc1 7
function ui:common/rand
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]で撃ち抜かれた","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]を使って命を奪われた","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]に終止符を打たれた","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]で執行された","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 4 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]で狙撃された","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 5 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]によってチリになった","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 6 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]によって死んだ","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {WeaponName:""} run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に撃ち抜かれた","color":"white"}]
execute unless entity @e[tag=tds_tempa] run tellraw @a ["",{"selector":"@s"},{"text":"は撃ち抜かれた","color":"white"}]

#死
function tds:death