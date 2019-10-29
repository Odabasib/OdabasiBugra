SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view [GUSTO00001].[V_BankaKasaHareketleri] as 
select * from  [GUSTO00001].[V_BankaKasaHareketleri_Alacak]

union 

select* from [GUSTO00001].[V_BankaKasaHareketleri_Borc]
GO