# inspired by
# http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html

set -x MARKPATH ~/.marks

function j
    if cd {$MARKPATH}/$argv[1] 2>/dev/null
    else
        echo "No mark: $argv[1]"
    end
end

function unmark
    rm -f {$MARKPATH}/$argv[1]
    set -x MARKS (ls $MARKPATH)
#    complete -c jump -A -e (echo $argv[1])
#    complete -c unmark -A -e (echo $argv[1])
end

function unmarkall
    for mark in (ls {$MARKPATH})
        unmark mark
    end

end

function mark
    rm {$MARKPATH}/$argv[1] 2>/dev/null
    mkdir -p $MARKPATH; ln -f -s (pwd) {$MARKPATH}/$argv[1]
    set -x MARKS $MARKS $argv[1]
#    complete -c jump -A -a $argv[1]
#    complete -c unmark -A -a $argv[1]
end

function marks
    cd $MARKPATH; stat -f "%N%SY" *; cd -
end

