## Laravel Rabbitmq Mysql dockernized app 



# PHP version 
```
php 8.2
```

# Laravel framework version 
```
Laravel  10.8
```

# Mysql version 
```
mysql  8.0.33 
```

# Laravel Rabbitmq 
```
3.6-management-alpine
```

## Setup 
clone project and execute 

```
make setup 
```

after few minutes the project witll be available on 

```
http://localhost:8000
```

the project use Inertia with react 

Session authetication is already set up 
 
# Customise your user class 
before executing make setup edit the user migration and user model in 
```
database/migrations/2014_10_12_000000_create_users_table.php
```
```
app/models/User.php
```


### TODO 

- [x] Explation for setup 
- [x] add make file 
- [x] Make project setup easy
- [x] Configure rabbitmq
- [ ] Install supervisord to manage queue workers 
- [ ] Optimise docker config for CICD 
- [ ] Add CICD pipline to google cloud 
