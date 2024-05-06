npm i
docker build . -t minimal-repro-image
docker create --name minimal-repro minimal-repro-image
docker cp minimal-repro:/src/a.out.js a.out.js
docker rm minimal-repro
node __test_utils__/runServe.js
