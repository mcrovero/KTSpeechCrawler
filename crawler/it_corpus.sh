#!/bin/bash
trap "exit" INT

target_dir=$1
filter_dir=$2

declare -a arr=( 'gdCJHazgpXE' 'WKrJlyaDXN4' '_FZfEjIme7M' 'uuicMkCXXTw' 'YXOiTyPLI8s' 'Y3HPkXHxS_s' 'BDx_YTf9x1g' 'QsuNp2i_7aM' '9BAnTQQ7dnE' 'WKi6keeuLNk' 'cZe3SinqPrE' 'T260KlVYSR8' 'w6heU_tDR7M' 'u0qcMMWiQEU' 'LD3twV19uAo' 'ookGv44MMd4' 'UQq7C2hwXu0' 'yTYFy86kMGg' 'XKssQwEhL1M' 'vShHDqWwj0o' 'SlWIXiQnuHw' 'dt84_Tc_3zg' 'JmU-e_APnE0' '7Zjtc9xBE3Y' 'Ox6muLN2DGo' 'mYQJf8rfW1A' 'jMNs--cbqP4' 'm3SDBSc5IOo' 'vj6MywPAj2I' 'wog-GSooeSE' 'DOhZ3NSfLf8' 'dfFSsH88E0w' '6RIpTuGdEqM' '5m-AMXxTPII' 'w_2C7dNpazQ' '6zJpQflzEg4' 'dt84_Tc_3zg' 'XKssQwEhL1M' 'SlWIXiQnuHw' '01X-elTn5No' 'Ghj4fgsDvXQ' 'R8tVxaAphYM' 'CL8fS-wISSE' 'gq1kJsLgYKI' 'N75LXwy8XUw' 't3Fi1HyKkiY' 'EU0llqS0Evg' 'EJ_iJu4dbiM' 'c2BwokYb2Q8' 'wbCu4jwyTOE' 'BBMGdKL_E1c' 'BBMGdKL_E1c' 'u-l6gkx3OsY' 'L3ydPsGTEtw' '5rOdGpTHr-g' 'Av5mXtIW_ic' 'mgL6gIFc9s0' 'JMosdABri6w' 'Z3uGxCnwL2c' '5r_OIEJpp9c' 'FrkHK69S698' 'mXxLQn7DqVY' 'QUuqOtKU7OU' 'VsAVrMVRAe0' 'IdMszZBC0Oc' 'SXXHUYVZhAE' 'ut--sqUJIjU' 'VS6iXSNMyPM' 'GzuflUeu1OE' 'GjhooxvybHg' 'ut--sqUJIjU' 'IdMszZBC0Oc' 'dgvim-EUC8o' '7jkIV5VJ5uQ' 'faor3tlQo-M' 'PO4HhPYV1GM' 'VqNN-kCyBZk' 'kYEXAveMfZw' 'Onkbn06qRH8' 'm2AmhGjZUm8' 'v5HczyDQF2U' '2yC_zLeUXwM' )
i = 0
for kw in "${arr[@]}"
do
    echo "PAGE="$i
    let "i+=1" 
    youtube-dl --download-archive ./it-downloaded.txt --no-overwrites -f 'bestaudio[ext=m4a]' --restrict-filenames --youtube-skip-dash-manifest --prefer-ffmpeg --socket-timeout 20  -iwc --write-info-json -k --write-srt --sub-format ttml --sub-lang it --convert-subs vtt  $kw -o "$target_dir%(id)s%(title)s.%(ext)s" --exec "python ./crawler/process.py {} '$filter_dir'"
done
