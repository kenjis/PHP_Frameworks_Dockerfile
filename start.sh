# CodeIgniter4
if [ -z "$(ls -A codeigniter4/source)" ]
then
  git clone https://github.com/bcit-ci/CodeIgniter4.git ./codeigniter4/source
  chmod -R 777 ./codeigniter4/source/writable
else
  echo "./codeigniter4 is no blank"
fi


# CodeIgniter3
if [ -z "$(ls -A codeigniter3/source)" ]
then
  git clone https://github.com/bcit-ci/CodeIgniter.git -b 3.1-stable ./codeigniter3/source
  chmod -R 777 ./codeigniter3/source/application/logs
else
  echo "./codeigniter3 is no blank"
fi

docker-compose -f ./yml/docker-compose.yml up -d
