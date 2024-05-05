npm i
docker build . -t minimal-repro-image
docker create --name minimal-repro minimal-repro-image
docker cp minimal-repro:/src/a.out.js a.out.js
npm run bundle:webpack
node __test_utils__/runServe.js
