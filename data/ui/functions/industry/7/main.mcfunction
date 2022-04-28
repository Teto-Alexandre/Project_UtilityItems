#=========================================================================================
#
#   新しいレシピの追加方法（汎用）
#       ・同ファイルのrecipeを開き・・・
#           ・レシピ情報を追加
#           ・作業時間を追加
#           ・必要アイテム数を追加
#       ・同ファイルのguiを開き「#レシピ情報をもとに完成品スロットの見た目を設定」を行う
#
#=========================================================================================

#電力をリンク先から引き出す
    function ui:industry/su_input

#レシピ
    #成果スロットが空なら前のtickのレシピ情報を保存する
        tag @s[tag=ui_i_stopped] remove ui_i_stopped
        scoreboard players operation @s ui_i_recipe2 = @s ui_i_recipe
    #成果が満タンなら動作停止
            execute at @s[scores={ui_i_gui_mode=3}] run tag @s add ui_i_stopped
    #材料スロットのアイテム数をカウント
        execute store result score @s ui_i_supitem run data get block ~ ~ ~ Items[{Slot:11b}].Count
    #レシピを参照して必要素材と完成品をロード
        function ui:industry/7/recipe
    #材料スロットのアイテム数が必要素材以下ならレシピ情報をキャンセル
        execute if entity @s[scores={ui_i_conitem=1..,ui_i_recipe=1..}] unless score @s ui_i_supitem >= @s ui_i_conitem run scoreboard players set @s ui_i_recipe 0
        #execute if entity @s[scores={ui_i_conitem2=1..,ui_i_recipe=1..}] unless score @s ui_i_supitem2 >= @s ui_i_conitem2 run scoreboard players set @s ui_i_recipe 0
    #レシピ情報がないなら作業必要時間と作業進行状況をリセット
        execute if entity @s[scores={ui_i_recipe=0}] run scoreboard players reset @s ui_i_ctt
        execute if entity @s[scores={ui_i_recipe=0}] run scoreboard players reset @s ui_i_ct
    #前のtickとレシピ情報が違う（＝レシピが変更された）なら・・・
        #作業関係を一旦リセット
            execute at @s[scores={ui_i_gui_mode=1..3}] run execute unless score @s ui_i_recipe = @s ui_i_recipe2 run scoreboard players reset @s ui_i_ctt
            execute at @s[scores={ui_i_gui_mode=1..3}] run execute unless score @s ui_i_recipe = @s ui_i_recipe2 run scoreboard players reset @s ui_i_ct
        #完成品が入っている時：変更キャンセル
            execute at @s[scores={ui_i_gui_mode=2..3}] run execute unless score @s ui_i_recipe = @s ui_i_recipe2 run tag @s add ui_i_stopped
            execute at @s[scores={ui_i_gui_mode=2..3}] run execute unless score @s ui_i_recipe = @s ui_i_recipe2 run scoreboard players operation @s ui_i_recipe = @s ui_i_recipe2

#電力スコアを減少して動作を進める
    execute if entity @s[tag=!ui_i_stopped] if score @s ui_i_su >= @s ui_i_suu if score @s ui_i_recipe matches 1.. run scoreboard players operation @s ui_i_ct += @s ui_i_ctp
    execute if entity @s[tag=!ui_i_stopped] if score @s ui_i_su >= @s ui_i_suu if score @s ui_i_recipe matches 1.. run scoreboard players add @s ui_i_ltc 1
    execute if entity @s[tag=!ui_i_stopped] if score @s ui_i_su >= @s ui_i_suu if score @s ui_i_recipe matches 1.. if score @s ui_i_ltc matches 5.. run scoreboard players set @s ui_i_ltc 1
    execute if entity @s[tag=!ui_i_stopped] if score @s ui_i_su >= @s ui_i_suu if score @s ui_i_recipe matches 1.. if score @s ui_i_ltc matches 1 run particle dust 0.2 0.2 0.2 0.6 ~ ~0.5 ~ 0.2 0.1 0.2 0 1 normal
    execute if entity @s[tag=!ui_i_stopped] if score @s ui_i_su >= @s ui_i_suu if score @s ui_i_recipe matches 1.. if score @s ui_i_ltc matches 3 run particle dust 0.2 1 0.5 0.6 ~ ~0.5 ~ 0.2 0.1 0.2 0 1 normal
    #execute if entity @s[tag=!ui_i_stopped] if score @s ui_i_su >= @s ui_i_suu if score @s ui_i_recipe matches 1.. if score @s ui_i_ct matches 1 run playsound ui:block.compressor block @a ~ ~ ~ 1 1 0
    execute if entity @s[tag=!ui_i_stopped] if score @s ui_i_su >= @s ui_i_suu if score @s ui_i_recipe matches 1.. run scoreboard players operation @s ui_i_su -= @s ui_i_suu
    scoreboard players operation @s ui_i_su < @s ui_i_sum
    scoreboard players operation @s ui_i_su > #0 ui_num
    execute if entity @s[tag=!ui_i_stopped] if score @s ui_i_ct > @s ui_i_ctt run tag @s add ui_i_crafted

#動作が進んだらアイテムを産出
    execute as @s[tag=ui_i_crafted] run function ui:industry/7/craft

#成果物が次のクラフトでも1スタック未満であるか確認
    scoreboard players set @s ui_i_gui_mode 1
    scoreboard players operation @s ui_i_item_calc = @s ui_i_item
    scoreboard players operation @s ui_i_item_calc += @s ui_i_resitem
    execute if score @s ui_i_item_calc <= $max ui_i_resitem if score @s ui_i_item matches 1.. run scoreboard players set @s ui_i_gui_mode 2
    execute if score @s ui_i_item_calc > $max ui_i_resitem run scoreboard players set @s ui_i_gui_mode 3

#GUI描画
    execute if entity @s[scores={ui_i_gui=2}] run function ui:industry/7/gui
    
#土台壊されたら破壊
    execute as @s[tag=ui_i_break] run function ui:industry/7/break

#=========================================================================================