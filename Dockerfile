FROM node:20
# iska mtlb ap latest version use kroge :  FROM node

WORKDIR /myapp
# container mai aik folder banega

COPY . .
# copy all files to myapp

RUN npm install
# app ko chalane k liye jo pkg zarori honge wo install honge

#  upr ki char command ko use krke image banegi 


CMD [ "npm" , "start" ]
# uske baad ye command use hogi app ko run krne k liye



# uske baad terminal mai { docker build . } krenge . ka mtlb current directory iske baad docker image ban jayggi
#  agr ham personal  repo name rkhna chahte hain to { docker build -t Name:version . } -t stand for tag
# { docker image ls OR docker images } use krke images ki list check krskte hain

#  container mai app ko run krne k liye { docker run imageId } run krna prega

#  container ko stop krne k liye { docker ps } ( ps bas running container
    #  show krega  all k liye { docker ps -a } use hoga) use krenge uske baad
    #  { docker stop containerName } use krenge stop krne k lie

# container k ander localhost run nh hoga to uske liye
    #  { docker run -p 3000:3000 imageId } use krenge us se local ip
    #  container k ander or bahar bind hojaygi

#  for remove container { docker rm ImageId }

# image ko delete krne k liye { docker rmi NAME/IMAGE-ID }

# exsisting image ka name change krne k liye { docker tag exsistingName:ver newName:ver }


# ---------- SHARING IMAGES TO SOMEONE ----------
    # 1 -  Create repo  on docker hub
    # 2 - in terminal login docker
    # 3 - same name jo repo ka hoga us ki same name se image bnaynge

# ------- TERMINAL MAI INPUT K LIYE ---------------
    #  { docker run -it ImageId/Name } -it stands for interactive terminal 

# ----------------- RUNNING CONTAINER IN DETACHED MODE / IN BACKGROUND --------------

    # { docker run -d -p 3000:3000 imageId } use krenge background mai use krne k liye

# -------- TO DELETE CONTAINER AUTO AFTER RUNNING ---------- 
    # { docker run -d --rm -p 3000:3000 imageId }

# ---------- GIVING PERSONAL NAME TO CONTAINER ----------
    # { docker run -d --rm --name "NAME" -p 3000:3000 imageId/Name:version }

# ---------- DOCKERS VOLUME ----------------------
    # for example jese ham local storage mai save kr rhe hain to container delete 
    # hone k baad wo bhi delete hojaygi file to usko save rkhne k liye
    #  { docker run -it --rm -v anyname:/myapp/ (path of project) ImageId}

# ---------- MOUNT BINDS--------------------------
    # iska mtlb ye hai k agr koi app apki data read krti hai local file se to wo container mai bhi read kre
    # { docker run -v localPathFileFromLocalMchine:/myapp/server.txt (container path) --rm (for delete) ImageId }


# ---------- .DOCKERIGNORE -----------------------
    # is file mai ham wo btate hain jo hame docker hub pr push nh krna hota


# --------- WOKRING WITH APIS -------------------- 
    # jab apka program ksi api  pr depend ho
    # dockerFile mai { RUN pip install request (ya jo bhi package use horha hoga) }

# -------- CONTAINER WITH LOCAL DATABASE ---------
    # database se connect k doran host ki jaga { host.docker.internal } likhna hota hai

# -------- COMMUNICATION BETWEEN CONTAINER TO CONTAINER -------
    # 2 container apas mai sath mai kaam kr rhe hain 
    # 1 container is python or any other software and 2 is for database
    # database run krn k lye
        #  { docker run -d --env MYSQL_ROOT_PASSWORD="root" --env MYSQL_DATABASE="userinfo" --name mysqldb mysql }
    # software run krne k liye database mai HOST ki jaga ip dalegi container ki 
        # { docker inspect ContainerName } network mai IpAddress 

# --------- DOCKER NETWORKS --------------
    # { docker network create mynet } for creating network


#                      -------- KUBERNITIES --------------

# ---------  ORCHESTRA ---------
    # is used to manage containers
    # pod aik smallest unit hai jsme container run hota hai

