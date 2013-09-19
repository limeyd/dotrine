# clear and REBUILD PATH
if [ -f /etc/profile ]; then
  PATH=""
  source /etc/profile
fi

if [ -f  ~/.bashrc ];
then
  source ~/.bashrc
fi
