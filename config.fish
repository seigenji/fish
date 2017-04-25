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

  # cdした後に自動でls
  function cd
    builtin cd $argv
    ls
  end

  set -x PATH /usr/local/bin $PATH
  set -x PATH /usr/local/opt/openssl/bin $PATH
  set -x PATH /usr/local/opt/opencv3/bin $PATH
  set -g fish_user_paths "/usr/local/opt/opencv3/bin" $fish_user_paths

  # Press enter to ls
  function done_enter --on-event fish_postexec
    if test -z "$argv"
      ls
    end
  end
end

# sublimetext3を現在のディレクトリをプロジェクトとして開く
# commandは sb . とかで今のディレクトリをプロジェクトとして開く
alias sb="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

## rmでゴミ箱に入れる
alias rm='rmtrash'