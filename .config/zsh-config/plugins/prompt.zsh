# PROMPT='%F{yellow}%n@%m%F{default}:%~ '
PROMPT='%F{yellow}%n@%m%F{default}:${PWD/*\//} '
PROMPT+=\$vcs_info_msg_0_
PROMPT+=\$reset_color
PROMPT+='%# %F{default}'
