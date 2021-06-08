# Hometime Coding Exam

**Working Demo**

https://www.bnjtgly.cyou/

**Approach**
1. To support scalability and support another endpoint, the payload will be saved in Payload Model using Postgresql. 
2. We will use jsonb datatype to save json from the payload.
3. After the creation of payload. The app needs to process the payload through after_create callback. 
4. We will need to serialize the payload for easy access of model.
5. The parsed json will be saved in Reservation and Guest Model respectively through nested attributes. 

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
	
