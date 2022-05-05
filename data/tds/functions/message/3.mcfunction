#キルログ
scoreboard players set $mod ui_calc1 2
function ui:common/rand
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]で真っ黒焦げにされた","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]に焼き尽くされた","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {WeaponName:""} run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に燃やされて死んだ","color":"white"}]
execute unless entity @e[tag=tds_tempa] run tellraw @a ["",{"selector":"@s"},{"text":"は燃え尽きた","color":"white"}]

#死
function tds:death