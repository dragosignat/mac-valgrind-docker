# mac-valgrind-docker


Step 1 (To do once):
    docker build --platform=linux/amd64 -t valgrind-os-64 .

Step 2:
    docker run -d -it -v "$(pwd)"/[TARGET DIRECTORY]:/os_dev --platform linux/amd64 valgrind-os-64

Step 3 (Find proccess):
    docker ps

Step 4:
    docker exec -it [CONTAINER NAME] bash
