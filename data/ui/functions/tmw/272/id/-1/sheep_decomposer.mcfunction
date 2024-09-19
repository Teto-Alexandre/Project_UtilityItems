particle dust 3 3 3 2 ~ ~0.9 ~ 0.5 0.5 0.5 0 10 force
playsound entity.zombie_villager.cure player @a ~ ~ ~ 1 0.8 0.1

tellraw @a [{"text":"[Idling] > ","color": "light_purple"},{"text":"羊を削除しました","color": "gray"}]

function oh_my_dat:release
teleport @s ~ -300 ~
kill @s