##
# LOGIN Definition
##
if status --is-login

 # For Japanese
 set -gx LANG ja_JP.UTF-8
 set -gx LESSCHARSET utf-8
 set -gx JLESSCHARSET japanese-utf-8

 # For Python 2.7
 set -gx HGENCODING UTF-8
end

# cdした後に自動でls
function cd
  builtin cd $argv
    ls
end

set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/opt/openssl/bin $PATH
set -x PATH /usr/local/opt/opencv3/bin $PATH
