SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create function [Gusto].[HedefGerceklesen] (@Hedef decimal(15,2),@Sembol varchar(10),@Deger decimal(15,2))
returns int
as
Begin

	declare @HedefGerceklestiMi int;
	if (@Sembol = '<')
	begin
		 set @HedefGerceklestiMi =(select case when @Deger < @Hedef then 1 else 0 end)
	end
	else if (@Sembol = '<=')
	begin
		set	 @HedefGerceklestiMi =(select case when @Deger <= @Hedef then 1 else 0 end)
	end
	else if (@Sembol = '>') 
	begin
		set @HedefGerceklestiMi =(select case when @Deger > @Hedef then 1 else 0 end)
	end
	else if (@Sembol = '>=') 
	begin
		set @HedefGerceklestiMi =(select case when @Deger < @Hedef then 1 else 0 end)
	end
	else if (@Sembol = '=') 
	begin
		set @HedefGerceklestiMi =(select case when @Hedef = @Deger then 1 else 0 end)
	end

	return @HedefGerceklestiMi;
		
   

End
GO