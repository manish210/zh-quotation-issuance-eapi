%dw 2.0
output application/json
---
payload.customerData map (
    {
        fisrtName: $.firstName,
        lastName : $.lastName,
        dob : $.dob,
        emailId : $.emailId,
        destination : payload.travelDetails.destination[0],
        departureDate : payload.travelDetails.departureDate[0],
        returnDate : payload.travelDetails.returnDate[0]
     }
)