docker-compose build
docker-compose run --rm web rake db:reset
docker-compose run --rm web rake db:migrate
docker-compose run --rm web rake db:seed
docker-compose up
