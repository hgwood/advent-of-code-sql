env $(cat .env | xargs) psql --single-transaction --variable=ON_ERROR_STOP=1 $*
