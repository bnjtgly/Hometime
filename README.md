# Hometime Coding Exam

**Concept**
1. To support scalability and support another endpoint, the payload will be saved in Payload Model. 
2. After the creation of payload. The app needs to parse the payload that was saved in the database with jsonb datatype using after_create callback. 
3. The parsed json will be saved in Reservation and Guest Model respectively through nested attributes. 

**Files Used:**
Models: guest, payload, reservation.
Controllers: hometime_payloads, payloads
Serializers: jsonb

**Endpoint Testing**

**ASSUME:**
1.  The payload is from another endpoint.
2.  List of available payloads

    2.1 https://www.bnjtgly.cyou/hometime/1
    
    2.2 https://www.bnjtgly.cyou/hometime/2
    
3.  Application endpoints

    3.1 get https://www.bnjtgly.cyou/payloads
    
    3.2 post https://www.bnjtgly.cyou/payloads
    
4.  To test "post /payloads" we have to provide the api endpoint.
    	{
      		"endpoint": "https://www.bnjtgly.cyou/hometime/1"
	}
