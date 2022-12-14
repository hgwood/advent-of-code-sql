npx nodemon --watch $1 --exec sh psql.sh --file run.psql --variable=solver=$1 --variable=input=$2
