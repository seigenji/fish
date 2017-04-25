##
# LOGIN Definition
##
if status --is-login

 # For Japanese
 set -x LANG ja_JP.UTF-8
 set -x LESSCHARSET utf-8
 set -x JLESSCHARSET japanese-utf-8

 # For Python 2.7
 set -x HGENCODING UTF-8
end

# cdした後に自動でls
function cd
  builtin cd $argv
    ls
end

set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/opt/openssl/bin $PATH
set -x PATH /usr/local/opt/opencv3/bin $PATH

# Press enter to ls
function do_enter
  set -l query (commandline)

  if test -n $query
    echo
    eval $query
    commandline ''
  else
    echo
    ls
    if test (git rev-parse --is-inside-work-tree 2> /dev/null)
      echo
      echo -e "\e[0;33m--- git status ---\e[0m"
      git status -sb
    end
  end
  commandline -f repaint
end

function fish_user_key_bindings
  bind \cj do_enter
end