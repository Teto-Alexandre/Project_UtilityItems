#キルログ
scoreboard players set $mod ui_calc1 1
function ui:common/rand
execute if entity @e[tag=tds_tempa] unless data storage tds: {WeaponName:""} if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"WeaponName","interpret":true},{"text":"]でぺしゃんこにされた","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {WeaponName:""} run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"にぺしゃんこにされた","color":"white"}]
execute unless entity @e[tag=tds_tempa] run tellraw @a ["",{"selector":"@s"},{"text":"は巨大な力によって為す術もなく死んだ","color":"white"}]
tag @s remove tds_ui_highdamage_temp

#死
function tds:death