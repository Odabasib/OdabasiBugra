SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_StokMuhasebeTanimKodlari] as 
select 1 Kod , 'Mal Alış KDV Hesabı' Ad
union
select 2 Kod , 'Mal Satış KDV Hesabı' Ad
union 
select 3 Kod , 'Alış İade KDV Hesabı' Ad
union
select 4 Kod , 'Satış İade KDV Hesabı' Ad
union 
select 5 Kod , 'Mal Alış Hesabı' Ad
union
select 6 Kod , 'Mal Satış-Parekende Hesabı' Ad
union
select 7 Kod , 'Mal Satış-Toptan Hesabı' Ad
union
select 8 Kod , 'Alış İadeleri Hesabı' Ad
union
select 9 Kod , 'SAtış İadeleri Hesabı' Ad
union
select 10 Kod , 'Alış İndirimi Hesabı' Ad
union
select 11 Kod , 'Satış İndirimi Hesabı' Ad
union
select 21 Kod , 'Teşviksiz İhracat Hesabı' Ad
union
select 24 Kod , 'Teşviksiz İhracat İade Hesabı' Ad
union
select 25 Kod , 'Teşviksiz İhracat İndirim Hesabı' Ad
union
select 43 Kod , 'TEvkifat Tutar Alış Hesabı ' Ad
union
select 50 Kod , 'TEvkifat Tutar SAtış Hesabı ' Ad
GO