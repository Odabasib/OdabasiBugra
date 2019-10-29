SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO

create view [GUSTO00001].[V_EkKesintiToplami] as 
select sum (ldBruttutar) EkKesintitoplami ,nAy,nYil,pPersonel  from [GUSTO00001].[V_Ekkesinti]  group by nAy,nYil,pPersonel  
GO