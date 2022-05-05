#キルログ
scoreboard players set $mod ui_calc1 2
function ui:common/rand
execute if entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"ui:temp","nbt":"Name","interpret":true},{"text":"]で消滅した","color":"white"}]
execute if entity @e[tag=tds_tempa] if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"ui:temp","nbt":"Name","interpret":true},{"text":"]に消し去られた","color":"white"}]
execute unless entity @e[tag=tds_tempa] run tellraw @a ["",{"selector":"@s"},{"text":"は跡形もなく消滅した","color":"white"}]

#死
function tds:death