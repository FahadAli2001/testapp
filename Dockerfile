FROM node:20
# iska mtlb ap latest version use kroge :  FROM node

WORKDIR /myapp
# container mai aik folder banega

COPY . .
# copy all files to myapp

RUN npm install
# app ko chalane k liye

#  upr ki char command ko use krke image banegi 


CMD [ "npm" , "start" ]
# uske baad ye command use hogi



# uske baad terminal mai { docker build . } krenge . ka mtlb current directory iske baad docker image ban jayggi
#  agr ham personal image id name rkhna chahte hain to { docker build -t Name:ver . } -t stand for tag
# { docker image ls } use krke images ki list check krskte hain

#  container mai app ko run krne k liye { docker run imageId } run krna prega

#  container ko stop krne k liye { docker ps } ( ps bas running container show krega  all k liye { docker ps -a } use hoga) use krenge uske baad { docker stop containerName } use krenge stop krne k lie

# container k ander localhost run nh hoga to uske liye { docker run -p 3000:3000 imageId } use krenge us se local ip container k ander or bahar bind hojaygi

#  for remove image { docker rm ImageId }


# ----------------- RUNNING CONTAINER IN DETACHED MODE / IN BACKGROUND --------------

# { docker run -d -p 3000:3000 imageId } use krenge background mai use krne k liye

# -------- TO DELETE CONTAINER AUTO AFTER RUNNING ---------- 
# { docker run -d --rm -p 3000:3000 imageId }

# ---------- GIVING PERSONAL NAME TO CONTAINER ----------
# { docker run -d --rm --name "NAME" -p 3000:3000 imageId }