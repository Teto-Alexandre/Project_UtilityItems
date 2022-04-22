#=======================================================================================================

#全関数初期化

#ボートに浮遊付与
    execute positioned ~ ~-0.5 ~ as @e[type=boat,distance=..2,sort=nearest,limit=1] run data modify entity @s Motion[1] set value 0.15d
    execute positioned ~ ~ ~ as @e[type=boat,distance=..2,sort=nearest,limit=1] run function ui:tmw/208/set

#=======================================================================================================
