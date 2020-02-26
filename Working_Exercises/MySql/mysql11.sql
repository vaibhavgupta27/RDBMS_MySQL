start transaction;

select @greaterag:=MAX(age) 
from BankiingData;

insert into BankiingData(....columns) values (.....);
insert into BankiingData(....columns) values (.....);

commit;
