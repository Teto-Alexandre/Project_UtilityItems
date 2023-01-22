# サヴァイブで耐えた時の効果
    playsound item.totem.use player @a ~ ~ ~ 1 1 0
    particle totem_of_undying ~ ~1 ~ 0.4 0.6 0.4 0.3 15 force
    # 一秒間80%カット
    effect give @s resistance 1 3 true
    # サヴァイブのタグが消える
    scoreboard players reset @s ui_tmw237_survive