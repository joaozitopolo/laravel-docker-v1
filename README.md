# Laravel docker


## commands

- build the docker
    - npm run build

- running
    - npm start
    
- cleanup docker
    - docker stop run-laravel-docker
    - docker rm run-laravel-docker
    - docker rmi laravel-docker


## reference

[criando container](http://flaviosilveira.com/2017/criando-seu-container-com-dockerfile/)

[install php7.3](https://www.cloudbooklet.com/how-to-install-php-7-3-on-ubuntu-18-04/)

[install composer](https://www.hostinger.com/tutorials/how-to-install-composer)


## solving problems (at local shell)

- cleaning the mysql data
    - cd data
    - sudo rm -rf auto.cnf ib* mysql/ sys/ performance_schema/
