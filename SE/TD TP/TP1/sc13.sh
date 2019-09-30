#!/bin/bash

# Fonction qui vérifie le process ID (PID) de tout les processus
checkpid() {
  local i
  for i in $* ; do
    [ -d "/proc/$i" ] || return 1
  done
  return 0
}

checkpid
