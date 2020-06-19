# Medical-devices-db
This project has to files:
### md-structure
this is what you have to import to your sql server
### md-data
this one is dumbing data to try the database 

#### Here's some query to fitch the data:
```
SELECT procedures.* , doctor.*, doctor_phone.* ,patient.* ,place.* , place_phone.* ,devices.* FROM procedures  
INNER JOIN doctor ON procedures.doctor_id=doctor.ID  
INNER JOIN doctor_phone ON doctor_phone.doctor_id=doctor.ID  
INNER JOIN patient ON procedures.patient_id=patient.ID  
INNER JOIN place ON procedures.place_id=place.ID  
INNER JOIN place_phone ON place_phone.place_id=place.ID  
INNER JOIN devices ON procedures.device_id=devices.ID 
```

###  Note that you can't fetch photos or vidios within the privious table because those tables have many data that makes columns miss match 
To get all data in photos or video tables

SELECT photos.* FROM photos
