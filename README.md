# Spring Boot REST API using PostgreSQL and JWT
[YouTube Tutorial found here](https://www.youtube.com/playlist?list=PLWieu6NbbqTwwYwylgXmmKVX1ZWsUVx8m) 
> by Pair Learning
> 
> [GitHub Repo](https://github.com/pairlearning/expense-tracker-api)


## Downloads 
- [Postman](https://www.postman.com) 
- [Docker](https://www.docker.com) 
- [Postgres](https://postgresapp.com)
- [Postgres in Docker](https://hub.docker.com/_/postgres)

I had a problem with my docker installation becuase the latest version isn't compatible with MAC OS 10.13.6
So I deleted the version I initially downloaded via terminal and bash commands and then downloaded version 2.3.5.0 
![theerror](https://user-images.githubusercontent.com/83961643/174754064-06a9796f-11f5-46bd-b527-e41103258d04.jpeg)
![bugchat](https://user-images.githubusercontent.com/83961643/174754073-aa188ce3-8ee7-47b9-b2fd-6ba0c56ba8a1.jpeg)
![dockerversion](https://user-images.githubusercontent.com/83961643/174754079-ca328a5d-6158-4076-9e91-39e43cdced1e.jpeg)

## Initializr 
Initializing your Spring project via the web page [Spring Initializer](https://start.spring.io)
![springinit](https://user-images.githubusercontent.com/83961643/175000705-d25334fd-d332-448c-b23d-14aadd84cff9.jpeg)

Click Generate and download the zip file which you then unzip 

![files](https://user-images.githubusercontent.com/83961643/175003515-9f0b0689-b419-4712-8a41-e6bf6b49f8c6.jpeg)

Then drag and rop your unziped file into InteliJ which will then create a new project for you 
![new](https://user-images.githubusercontent.com/83961643/175003934-e68cf768-084c-4078-aff4-2463253f410a.jpeg)

Your main class auto generated
![mainclass](https://user-images.githubusercontent.com/83961643/175004377-aa35872c-d186-4bfe-8571-bfbf9ea4ea9c.jpeg)



## Setting up Docker with Postgres via command line

` docker container run --name postgresdb -e POSTGRES_PASSWORD=****** -d -p 5432:5432 postgres `

![terminal](https://user-images.githubusercontent.com/83961643/175002592-dc073636-c988-46a5-8b66-88bee490945c.jpeg)

` docker container ls `


## Creating the database & connections 
New file `expensetracker_db.sql`
![sqlfile](https://user-images.githubusercontent.com/83961643/175011614-418efc0e-59b3-4ef9-8db0-f733d9efa523.jpeg)

Running commands after opening the terminal at folder 
`docker cp expensetracker_db.sql postgresdb:/`

`docker container exec -it postgresdb bash`

`ls`

`psql -U postgres --file expensetracker_db.sql`


![opennew](https://user-images.githubusercontent.com/83961643/175016787-ccc63457-035d-40fb-9e0b-e389a200c0e1.jpeg)


![applicationprops](https://user-images.githubusercontent.com/83961643/175018025-a59fcc9e-5a03-4b9f-8db7-4ce15c06e983.jpeg)


Create a resources package under your com.pairlearning.expensetrackerapi and then create a UserResource class inside it: 
![userresourceclass](https://user-images.githubusercontent.com/83961643/175019953-94c1b035-1bfe-4e57-a7fa-31ba21bc6fab.jpeg)


## Open Postman  
Create a new Request and set it to POST 
then add body - set to raw , JSON 
![postman](https://user-images.githubusercontent.com/83961643/175246726-9f73bd31-98b2-4670-ae7c-536bff9a4310.jpeg)
click send 

![workingresponse](https://user-images.githubusercontent.com/83961643/175508343-b037f8be-b114-4fb9-a5a7-7c583d0469fd.jpeg)


## More File and Class creations
Creating constructors, Getter and setter methods
![User_gettersandsetters](https://user-images.githubusercontent.com/83961643/175307574-ebc402ab-9de1-4fd5-88ee-55e1e85b4e18.jpeg)


## More posts on Postman 
![createwrongpost](https://user-images.githubusercontent.com/83961643/175343616-adbda3cd-a6ea-40d5-852e-0163a75446cd.jpeg)
![postmanwronglogin](https://user-images.githubusercontent.com/83961643/175510831-279765b8-d712-4295-9276-50d05cbeccb7.jpeg)


## Adding missing dependencies to POM file 
![dependencies](https://user-images.githubusercontent.com/83961643/175343704-3e6f52af-b948-4a8f-88af-9256928ea109.jpeg)

Command line prompts to see the outcome of postman posts as seen in the video 
![command](https://user-images.githubusercontent.com/83961643/175343889-df3c84e6-ca81-4140-9084-2ae7fd8e4568.jpeg)
![terminalpostmantests](https://user-images.githubusercontent.com/83961643/175351007-27516b96-262a-4e27-bb32-8dd5ad641a5e.jpeg)



## [JWT](https://jwt.io)
![jwt](https://user-images.githubusercontent.com/83961643/175350990-f921ee89-19b3-47ba-ad8f-f8147f04b314.jpeg)
![pastetoken](https://user-images.githubusercontent.com/83961643/175351033-915d4c25-9301-4b74-90ef-bd0324442252.jpeg)


## Running application http://localhost:8080
![404error](https://user-images.githubusercontent.com/83961643/175511140-9f5fd955-40a6-4615-9740-7584b2c06e98.jpeg)

## Checking errors in postman 
![error](https://user-images.githubusercontent.com/83961643/175525921-5b0273d3-3b95-4a29-b8a1-d9f4114753ed.jpeg)
![error1](https://user-images.githubusercontent.com/83961643/175525898-68e01ad2-bc46-4a20-9a0b-bc4501042723.jpeg)



## Last Edit June 2022
