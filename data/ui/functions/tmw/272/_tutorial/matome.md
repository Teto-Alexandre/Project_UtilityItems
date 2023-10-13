基本の形
{cost:1,particle_laser:1,particle_self:1001,particle_look:1,effects:[{target_type:1,effect_type:"damage",var:1}]}

cost            - 必須      - マナコスト
cost_type       - 任意      - 1 にしてね
    cost_mods   - ↑を使うなら 基本の形 cost_mods:[{name:"turn_count",pow:0,mult:-1.0,add:0}]
        name    - 軽減に使うステータス  下の「ステータスの名前対応表」を見ること
particle_laser  - 任意      - 1 にしてね（レーザー表示）
particle_self   - 任意      - 数値idに対応するパーティクル表示
particle_look   - 任意      - 数値idに対応するパーティクル表示
particle_target - 任意      - 数値idに対応するパーティクル表示
particle_other  - 任意      - 数値idに対応するパーティクル表示

effects
    target_type
        1 : 見ている敵
        2 : 自分
        3 : 自分以外全員
        4 : 全員
        5 : 自分以外全員からランダムに N 人
            target_count: N
        6 : 全員からランダムに N 人
            target_count: N
        7 : (AfterEffect限定) 実行時のターゲット
    effect_type
        damage : ダメージ
        heal : 回復
        draw : ドロー
        discard : カードを捨てる
        create : カードを創造する
        duplication : 次のカードの効果を複製
        after_effect : チュートリアル５を読んで
        health_averaging : ターゲット全員で体力を平均化
        health_swap : ターゲット全員で体力を入れ替え
        condition_input : チュートリアル３を読んで
        modify_value : ステータスにvarだけ加算
        mana : マナを加算
        mana_max : マナ最大値を加算
    var : エフェクトに入れる数値
        rand - ランダムな数 - 基本の形 rand:{min:2,max:6}
            min 最小値
            max 最大値
        var_input - ステータスから入力する - 基本の形 var_input:{name:"health"}























ステータスの名前対応表

health              - 体力
mana                - マナ
mana_max            - マナ最大値
hand_num            - 手札の枚数
self_hurt           - 自傷回数（数値のみ存在）
candle              - ろうそく（数値のみ存在）
index_count         - 数符（数値のみ存在）
more_attack_more    - MOM（数値のみ存在）
turn_count          - ターン経過数
blessing            - 開幕：永続n回復
curse               - 開幕：永続nダメージ
slowness            - 常在：ドロー枚数がn減る、発動時減る、開幕1減る
hunger              - 開幕：永続nダメージ、回復でこの値だけ減少
burn                - 開幕：nダメージ、2/3になる
speed               - 開幕：1ドロー、1減る
strength            - 攻撃時：varが増減、消える
poison              - 開幕：体力の5%ダメージ、1減る
invisible           - 常在：標敵にならなくなる（VE干渉）、開幕1減る
regeneration        - 開幕：n回復、1減る
unluck              - 常在：ランダム値で常に最低値が出る、開幕1減る
darkness            - 開幕：次のマナn減少、消える
resistance          - 開幕：シールドn、1減る
fire_resistance     - 開幕：燃焼を無効化、1減る
flying              - 常在：ランダムの対象にならない、開幕1減る
trade               - 変数 ui_tmw272_trade ターン終了時、「取引に応じる」の状況リセット
nausea              - 常在：標敵を取る攻撃がランダム敵一体に変わる、開幕1減る
bleed               - 常在：カードを使うとnダメージ、発動と開幕で2/3
blindness           - 常在：敵全体対象が標敵に、全員対象が自分と標敵に変わる、開幕1減る
glowing             - 常在：透明化していてもロックできるようになる、開幕1減る
luck                - 常在：ランダム値で常に最高値が出る、開幕1減る
wither              - 開幕：体力の5%+nダメージ、1減る