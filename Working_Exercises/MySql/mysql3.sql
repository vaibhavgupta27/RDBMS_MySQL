##creating stored procedure
delimiter $$
create procedure GetDetails()
begin
	select age,marital,job,y 
	from 
	BankiingData 
	where y="yes"
        order by age asc;
end $$
delimiter ;
