function print_git_branch
    set -l git_branch ""
    if test -d .git
        set git_branch (basename (git symbolic-ref HEAD))
        set_color green
        if not git diff --quiet
            set_color yellow
        end
        echo -n "($git_branch)"
        set_color normal
    end
end

function fish_prompt_simple_git
    set -l username (whoami)
    set_color green
    echo -n "$username:"
    set_color normal
	echo -n (basename $PWD) (print_git_branch)
    echo " > "
end
