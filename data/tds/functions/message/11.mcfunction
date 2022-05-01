#キルログ
tellraw @a ["",{"selector":"@s"},{"text":"は巨大な力によって為す術もなく死んだ"}]
tag @s remove tds_ui_highdamage_temp

#死
function tds:death