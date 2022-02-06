# Learn Spring Data Rest using HATEOAS and HAL 


### Run the application

To run the application in development mode,

Run as Java Application and select 
```
LearnDataRestApplication
```

### H2 Database
After starting the application, navigate to http://localhost:8080/h2, which will present us with a login page.

login with credentials in application.properties

create table and insert data using the data.sql script from main/resources

### API

The application should be running at the following URLs:
http://localhost:8080/



GET  users  http://localhost:8080/users

POST users http://localhost:8080/users

 sample request:
 
```
{
"firstName": "christopher",
"lastName": "Nolan",
"userName": "chris.nolan",
"homeAddress": {
	"street": "123 main st",
	"zipCode": "95833",
	"city": "Sacramento",
	"country": "United States",
	"state": "CA"
	}
}  

```
 
 PATCH  users  http://localhost:8080/users/{id}
 
 sample request:

 ```
 
{
	"firstName":"kylian",
	"lastName":"Mbappe",
	"homeAddress": {
		"city":"Davis"
	}
}

```


