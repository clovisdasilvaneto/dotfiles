upgrade () {
  if [ -z $1 ]
  then
    if [ "$OS" == "Darwin" ]
    then
      echo "Updating…"
      brew update
      echo "Upgrading…"
      brew upgrade
    else
      sudo apt-get update
      sudo apt-get -u upgrade
    fi
  else
    ssh $1 -t sudo apt-get update
    local dummy
    ssh $1 -t sudo apt-get --no-act upgrade
    echo -n "Process the upgrade ?"
    read -q dummy
    if [[ $dummy = "y" ]]
    then
      ssh $1 -t sudo apt-get -u upgrade --yes
    fi
  fi
} 
