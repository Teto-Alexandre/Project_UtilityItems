#キルログ
scoreboard players set $mod ui_calc1 6
function ui:common/rand
execute if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"ui:temp","nbt":"Name","interpret":true},{"text":"]で命を落とした","color":"white"}]
execute if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"に[","color":"white"},{"storage":"ui:temp","nbt":"Name","interpret":true},{"text":"]を使って殺害された","color":"white"}]
execute if score $rand ui_calc1 matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"ui:temp","nbt":"Name","interpret":true},{"text":"]に殺された","color":"white"}]
execute if score $rand ui_calc1 matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"に[","color":"white"},{"storage":"ui:temp","nbt":"Name","interpret":true},{"text":"]で粉々にされた","color":"white"}]
execute if score $rand ui_calc1 matches 4 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"ui:temp","nbt":"Name","interpret":true},{"text":"]で痛い目に遭った","color":"white"}]
execute if score $rand ui_calc1 matches 5 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"ui:temp","nbt":"Name","interpret":true},{"text":"]によって死体になった","color":"white"}]

#死
function tds:death