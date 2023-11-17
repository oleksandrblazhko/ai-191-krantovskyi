create or replace function change_data (param1 varchar, param2 varchar)
returns varchar
as $$
declare 
	query1 varchar;
begin
	query1:= 'update auto set name = ''' || param2 || ''' where name = ''' || param1 ||'''';
	raise notice 'Query=%', query1;
	execute query1;
	return 'Table updated';
end;
$$ language plpgsql;
