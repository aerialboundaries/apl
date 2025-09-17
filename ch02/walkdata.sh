#!/bin/bash
# walkdata.sh : ウォーキング歩数データを生成する

start_date="1941-06-24"
end_date="2024-12-31"

# 日付を秒に変換
start_sec=$(date -d "$start_date" +%s)
end_sec=$(date -d "$end_date" +%s)

current_sec=$start_sec

while [ $current_sec -le $end_sec ]; do
    # 日付を MM/DD/YY 形式にフォーマット
    date_str=$(date -d "@$current_sec" +%m/%d/%y)

    # 歩数を乱数で生成（例: 4000〜20000）
    steps=$(( (RANDOM % 16001) + 4000 ))

    echo "$date_str $steps"

    # 翌日へ (86400秒 = 1日)
    current_sec=$(( current_sec + 86400 ))
done
