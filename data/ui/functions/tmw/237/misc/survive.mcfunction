# サヴァイブで耐えた時の効果
    playsound item.totem.use player @a ~ ~ ~ 1 1 0
    particle totem_of_undying ~ ~1 ~ 0.4 0.6 0.4 0.3 15 force
    # 一秒間無敵
    effect give @s resistance 1 5 true
    # サヴァイブのタグが消える
    tag @s remove tmw_237_sp_survive