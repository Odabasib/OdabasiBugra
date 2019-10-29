SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE view [GUSTO00001].[V_EDefterHareketTuru] as 
select 1 ID , 'Çek' 'HareketTuru'
union 
select 2 ,'Fatura'
union 
select 3 , 'Müşteri Sipariş Belgesi'
union 
select 4 , 'Satici Sipariş Belgesi'
union  
select 5 , 'Senet'
union 
select 6 , 'Makbuz'
union 
select 7 , 'Navlun'
union
select 8 , 'Diğer'
GO