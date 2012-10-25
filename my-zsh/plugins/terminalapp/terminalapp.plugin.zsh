# Set Apple Terminal.app resume directory
# based on this answer: http://superuser.com/a/315029

function chpwd {
  local SEARCH=' '
  local REPLACE=' '
  local PWD_URL=" file:/$HOSTNAME${PWD//$SEARCH/$REPLACE} "
  print "$ZSH_THEME_PWD_URL $PWD_URL"
}

chpwd