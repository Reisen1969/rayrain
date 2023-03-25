#!/bin/bash
# 本地快速启动脚本
# Quick start in local.

next_boot() {
    cat << EOT
========================================
  ███╗   ██╗███████╗██╗  ██╗████████╗
  ████╗  ██║██╔════╝╚██╗██╔╝╚══██╔══╝
  ██╔██╗ ██║█████╗   ╚███╔╝    ██║
  ██║╚██╗██║██╔══╝   ██╔██╗    ██║
  ██║ ╚████║███████╗██╔╝ ██╗   ██║
  ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝   ╚═╝
========================================
Hugo NexT version $1
Documentation: https://hugo-next.eu.org
========================================
EOT
}

next_boot `cat themes/hugo-theme-next/VERSION`


if [[ $1 == 'all' ]]; then
   hugo -D
   cd ./public
   git add .
   git commit -s -m "update"
   git push
elif [[ $1 == '2' ]]; then
 echo '2'
elif [[ $1 == 's' ]]; then
    hugo -D
    hugo server --port 1414
else
  echo 'error'
fi



