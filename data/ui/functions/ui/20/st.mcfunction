playsound entity.skeleton.death block @a ~ ~ ~
particle block bone_block ~ ~1 ~ 0.4 0.7 0.4 0 16
particle block oak_planks ~ ~1 ~ 0.4 0.7 0.4 0 16
scoreboard players remove $ui20 ui_world 1

setblock ~ ~ ~ air destroy

function oh_my_dat:release

kill @s
kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:chest",tag:{display:{Name:'{"bold":true,"italic":false,"text":"亜空間チェスト"}'}}}}]