##creating stored procedure
delimiter $$
create procedure GetDetails()
begin
	select age,marital,job,y 
	from 
	BankiingData 
	where y="yes";
end $$
delimiter ;
