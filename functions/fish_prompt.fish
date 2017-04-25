function fish_prompt
    if [ $status -eq 0 ]
        echo -n (set_color cyan)(prompt_pwd)
    else
        echo -n (set_color red --bold)(prompt_pwd)
    end
    echo -n '' (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
end