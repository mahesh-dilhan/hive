Create table  covid_country 
( country varchar(20), city varchar(20), positivecases INT, primary key (country,city));
-- drop table covid_country;

insert into covid_country values 
('SG','Sengkang',100), 
('SG','Punggol',50), 
('US','NY',100), 
('US','WH',200),
('IND','Kolkata',100),
('IND','Mubai',10)
;

select country, city, positivecases, 
  ROW_NUMBER() OVER (partition by country order by positivecases DESC) as rank
from 
  covid_country;


