select COUNT(*) from listings


select  * from listings a
join reviews b on a.id = b.listing_id where a.host_is_superhost is not null and
a.description is not null and a.bathrooms is not null and a.beds is not null 
and a.price is not null and price is not null and first_review is not null



select top 1000 * from listings 


drop table calender




