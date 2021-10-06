\c demo


select * from flights where flights.departure_airport='KZN' and flights.arrival_airport='MQF';

select * from flights where ((flights.departure_airport='SVO' or flights.departure_airport='DME' or flights.departure_airport='VKO') and flights.scheduled_departure between '2017-07-28 11:25:00+03' and '2017-07-28 11:50:00+03');

select * from flights as f join airports_data as ad on (f.departure_airport = ad.airport_code or f.arrival_airport = ad.airport_code) where (f.departure_airport in (select ad.airport_code from airports_data as ad where ad.timezone='Europe/Moscow') and f.arrival_airport in (select ad.airport_code from airports_data as ad where ad.timezone='Europe/Moscow'));
