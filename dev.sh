npx nodemon --watch $1 --exec sh psql.sh --single-transaction --file $1 --variable=input=$2
