if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/mrsns2503/2.0_TAMIL.git /2.0_TAMIL
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /2.0_TAMIL
fi
cd /2.0_TAMIL
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
