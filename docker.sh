
##Uninstall old versions
yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine \
-y

if [ $? -eq 0 ]
then
  echo "Successfully created file"
else
  echo "Could not create file" >&2
  exit 1
fi

##Set up the repository
yum install -y yum-utils
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo \
-y

