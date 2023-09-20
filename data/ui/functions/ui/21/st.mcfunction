playsound entity.skeleton.death block @a ^ ^ ^0.5
particle block bone_block ^ ^1 ^0.5 0.4 0.7 0.4 0 16
particle block oak_planks ^ ^1 ^0.5 0.4 0.7 0.4 0 16
scoreboard players remove $ui21 ui_world 1

setblock ^ ^ ^ air destroy
setblock ^ ^ ^1 air destroy

kill @s
kill @e[type=item,sort=nearest,limit=2,nbt={Item:{id:"minecraft:chest",tag:{display:{Name:'{"bold":true,"italic":false,"text":"亜空間ラージチェスト"}'}}}}]