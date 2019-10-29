SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


create view [GUSTO00001].[V_GerceklesenHedefBolumler] as
select 1 ID , 'İnsan Kaynakları' 'Bölüm'
union
select 2, 'Bilgi İşlem'
union
select 3, 'Üretim'
union
select 4, 'Satınalma'
union
select 5, 'Bakım'
union
select 6, 'Satış Pazarlama (YD)'
union
select 7, 'Satış Pazarlama (Yİ)'
union
select 8, 'Kalite Kontrol'
union
select 9, 'Lojistik'

GO