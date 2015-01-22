export APP_PWD=password

db() {
  docker run -P --volumes-from app_data --name app_db -e POSTGRES_USER=app_user -e POSTGRES_PASSWORD=$APP_PWD -d -t postgres:latest
}

app() {
  docker run -p 3000:3000 --link app_db:postgres --name app josemotanet/app
}

action=$1

${action}
