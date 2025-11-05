function change_volume --argument-names amount
    set -l current (pamixer --get-volume)
    set -l new (math "$current + $amount")
    if test $new -lt 0
        set new 0
    else if test $new -gt 100
        set new 100
    end
    pamixer --set-volume $new
    echo "Volume: $new%"
end
