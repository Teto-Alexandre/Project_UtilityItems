# どのバーストタイプ（＝キー入力をどう取り扱うか）を適応するかをベースタイプを参照して決定する
    ##. 1:単種類射撃(main) 2:ホールド別射撃(main,hold) 3:ファイナル別射撃(main,final) 4:溜め付きホールド(main,hold)
    ##. -1:スペシャル(sp) -2:サブ(sub)

# -1,-2.装備型サブスペを発動中なら最優先で適応する
    execute if score $subtype ui_temp matches 401..500 if score $subtime ui_temp matches 1.. run function ui:tmw/237/basetype/sub
    execute if score $sptype ui_temp matches 401..500 if score $sptime ui_temp matches 1.. run function ui:tmw/237/basetype/sp

# 1.単純型ならそのまま読み込み
    execute if score $basetype ui_temp matches 1 run function ui:tmw/237/basetype/1

# 2.ホールド型ならホールド中は専用の射撃タイプを読み込む
    execute if score $basetype ui_temp matches 2 run function ui:tmw/237/basetype/2

# 3.ファイナル型なら最後は専用の射撃タイプを読み込む
    execute if score $basetype ui_temp matches 3 run function ui:tmw/237/basetype/3

# 4.ウェイト&ホールド型なら入力でctと慣性リセット、最初の射撃検知、ホールド中は専用射撃を読み込み
    #次が初回射撃かどうかの記録値をnow内部に持つ
    execute if score $basetype ui_temp matches 4 run function ui:tmw/237/basetype/4

# 4.チャージ&パルス型なら0入力でct増加開始とホールドON、1以上でmain射撃を読み込み
    #チャージ時間の記録値をnow内部に持つ
    execute if score $basetype ui_temp matches 5 run function ui:tmw/237/basetype/5