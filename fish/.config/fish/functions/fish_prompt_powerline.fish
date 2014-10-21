
function print_segment  # text foreground background next_bg
    set_color $argv[2]
    set_color -b $argv[3]
    echo -n $argv[1]
    set_color -b $argv[4]
    set_color $argv[3]
    echo -n "⮀"
end

function fish_prompt_powerline
    set -l username (whoami)
    set -l dir      (basename $PWD)

    set -l gitbranch ""
    set -l gitcolor normal
    if test -d .git
        set gitbranch (basename (git symbolic-ref HEAD))
        set gitcolor green
        if not git diff --quiet
            set gitcolor yellow
        end
    end
    
    print_segment " $username " white black blue
    print_segment " $dir " white blue $gitcolor
    if test -n $gitbranch
        print_segment " $gitbranch " white $gitcolor normal
    end
    echo " "
end
