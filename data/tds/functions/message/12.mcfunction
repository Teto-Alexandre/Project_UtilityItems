#キルログ
scoreboard players set $mod ui_calc1 3
function ui:common/rand
execute if entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"text":"エレキショッカー・オート","color":"light_purple"},{"text":"]で黒焦げにされた","color":"white"}]
execute if entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"text":"エレキショッカー・オート","color":"light_purple"},{"text":"]によって炭になった","color":"white"}]
execute if entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に[","color":"white"},{"text":"エレキショッカー・オート","color":"light_purple"},{"text":"]で電流を流され死んだ","color":"white"}]
execute unless entity @e[tag=tds_tempa] run tellraw @a ["",{"selector":"@s"},{"text":"は感電して絶命した","color":"white"}]

#死
function tds:death