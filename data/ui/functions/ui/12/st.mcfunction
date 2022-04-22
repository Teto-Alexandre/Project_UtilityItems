playsound entity.skeleton.death block @a ~ ~ ~
particle block bone_block ~ ~1 ~ 0.4 0.7 0.4 0 16
particle block oak_planks ~ ~1 ~ 0.4 0.7 0.4 0 16
summon item ~ ~0.5 ~ {Item:{id:"evoker_spawn_egg",Count:1,tag:{tmw:{egg:12},display:{Name:'{"text":"ダメージテスター","italic":false,"color":"white"}',Lore:['[{"text":" 近くでしゃがむと回収できる","color":"gray","italic":false}]','[{"text":" 25m以内にダメージを表示する","color":"gray","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg","ui_12"]}}}}
teleport @e[tag=ui_12_2,sort=nearest,limit=1] ~ ~-300 ~
execute positioned ~ ~-300 ~ run kill @e[tag=ui_12_2,sort=nearest,limit=1]
kill @s