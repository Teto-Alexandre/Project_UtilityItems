#キルログ
scoreboard players set $mod ui_calc1 2
function ui:common/rand
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]で凍結した","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]によって氷像になった","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {WeaponName:""} run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に氷像にされた","color":"white"}]
execute unless entity @e[tag=tds_tempa] run tellraw @a ["",{"selector":"@s"},{"text":"は氷像になった","color":"white"}]

#死
function tds:death