SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_FaturaBrut] as  select *from GUSTO00001.faturaEkAlanMetin where pEkAlanTanimi =3
GO