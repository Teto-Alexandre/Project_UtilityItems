# どのバーストタイプ（＝キー入力をどう取り扱うか）を適応するかをベースタイプを参照して決定する
    ##. 1:単種類射撃(main) 2:ホールド別射撃(main,hold) 3:ファイナル別射撃(main,final)
    ##. -1:スペシャル(sp)

# 1.単純型ならそのまま読み込み
    execute if score $basetype ui_temp matches 1 run function ui:tmw/237/basetype/1

# 2.ホールド型ならホールド中は専用の射撃タイプを読み込む
    execute if score $basetype ui_temp matches 2 run function ui:tmw/237/basetype/2

# 3.ファイナル型なら最後は専用の射撃タイプを読み込む
    execute if score $basetype ui_temp matches 3 run function ui:tmw/237/basetype/3

# -1.装備型スペシャルを発動中なら最優先で適応する
    execute if score $sptype ui_temp matches 301..400 if score $sptime ui_temp matches 1.. run function ui:tmw/237/basetype/sp