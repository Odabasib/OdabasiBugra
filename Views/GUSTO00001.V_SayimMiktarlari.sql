SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_SayimMiktarlari]
as 
select 24 sayimMiktar,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFAST 88 CPx') union
select 531,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 25 015021 CPx') union
select 1204,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 25 021030 CPx') union
select 500,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 25 021030 TKx MD') union
select 155,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 25 030042 CPx') union
select 1050,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 25 030042 TKx MD') union
select 780,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 25 042060 CPx') union
select 17,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 25 042060 CPx KBNT') union
select 1420,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 25 050070 CPx') union
select 350,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 25 060084 CPx') union
select 485,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 25 070100 CPx') union
select 16,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 25 084118 CPx') union
select 4,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 28 050070 CPx') union
select 450,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 32 030042 CPx') union
select 572,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 32 042060 CPx') union
select 450,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 32 050070 CPx') union
select 8,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFRS 32 084118 TKx') union
select 15,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 20 015021 CPx') union
select 140,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 20 021030 TKx') union
select 470,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 20 030042 CPx') union
select 160,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 20 035050 CPx') union
select 60,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 20 042060 CPx') union
select 25,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 015021 CPx') union
select 2770,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 021030 CPx') union
select 800,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 021030 TKx MD') union
select 150,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 021030 VKF KB') union
select 1376,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 030042 CPx') union
select 40,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 030042 CPx WP') union
select 175,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 030042 TKx MD') union
select 15,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 030042 TKx R9010') union
select 70,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 030042 VKF KB') union
select 350,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 035050 CPx') union
select 1530,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 042060 CPx') union
select 10,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 042060 KBNT') union
select 19,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 042060 TKx R3020') union
select 2,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 042060 TKx R9005') union
select 597,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 050070 CPx') union
select 5,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 050070 TKx R9005') union
select 10,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 050070 TKx R9010') union
select 5,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 060080 CPx R9003') union
select 370,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 060084 CPx') union
select 20,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 060084 TKx R9005') union
select 785,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 070100 CPx') union
select 745,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 070100 CPx WP') union
select 3,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 084118 TKx R3020') union
select 98,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 084118 TKx R9005') union
select 20,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25 085011 R9005') union
select 20,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 25PP 594594 DIS') union
select 29,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 28 021030 TKx') union
select 25,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 30 050070 CPx') union
select 500,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 32 042060 CPx') union
select 35,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 32 050070 CPx') union
select 19,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 32 050070 CPx WFEKO') union
select 29,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 32 050070 TKx R9005') union
select 30,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 32 060084 CPx') union
select 45,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 32 070100 CPx') union
select 12,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 32 084118 TKx') union
select 210,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 46 070100 CPx') union
select 2,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 46 070100 TKx R3020') union
select 2,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS 46 070100 TKx R9010') union
select 9,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS F20 042060 CPx') union
select 25,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS F32 060084 CPx ') union
select 110,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS G25 042060 CPx ') union
select 4,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS L32 042060 CPx') union
select 10,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS L32 042060 CPx WP') union
select 50,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS L32 060084 CPx') union
select 6,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS L32 060084 CPx R9005') union
select 90,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS L32 070100 CPx WP') union
select 27,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS L32 084118 TKx') union
select 16,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS L32 100140 TKx') union
select 28,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS L32 100140 TKx WP') union
select 6,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS S25 050070 CPx') union
select 8,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS S25 070100 CPx') union
select 6,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS S25 084118 TKx') union
select 15,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS S32 050070 CPx') union
select 110,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PFSS W25 050070 CPx ') union
select 12,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PHBS 25 600 CPx') union
select 15,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PHBS 25 700 CPx') union
select 125,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PHBS 25 800 CPx') union
select 11,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PHBS 28 600 CPx') union
select 53,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PHBS 28 841 CPx') union
select 7,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 PHBS 32 300 CPx') union
select 500,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 QCBLK1620 ') union
select 11,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 QCBLK28 ') union
select 10,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 QCFNCY28SV ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 QCFNCY36BK ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 QCFNCY36SV ') union
select 3,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 QCSLV1824 ') union
select 500,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 QCX45BLK36 ') union
select 4,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 SIF 042060 CPx') union
select 4,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M01 SIF 050070 CPx') union
select 4,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 APRD 25PS 050070 ') union
select 2,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 APRD 25PS 060084 ') union
select 12,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 APRD 32GS 060084 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 APRD 32PS 060084 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 APSD 25E 050070 ') union
select 2,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 APSD 32PS 050070 VA') union
select 6,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 PAWT 050080 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 PS 3D 32GS 060084 1800 WP') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 SWRD 35 050070 WP') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 SWRD 46 060084 ') union
select 9,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 SWSD 35 050070 WP') union
select 6,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 SWSD 35 060084 WP') union
select 145,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 SWSD 35 070100 WP') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 SWSD 46 050070 ') union
select 3,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 SWSD 46 060084 WP') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 SWSD 46 070100 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 SWSD 46 070100 R3020') union
select 24,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 SWSD 46 070100 WP') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M02 SWSD 46 084118 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M03 LLB D 25 070100 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M03 LLB D 46 060084 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M03 LLB S 25 042060 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M03 LLB S 35 060084 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M04 DMSD 25E 030021 SB') union
select 3,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M04 DMSR 25 1A4 SB') union
select 100,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M04 MBS 25 021030 SB') union
select 105,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M04 MBS 25 030042 SB') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M04 MBTR 25 021030 QB') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M05 LBSS 32 050070 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M05 PS SIF 060084 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M05 PSRD 32 060084 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M05 PSRD 32E 070100 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M05 PSRS 25E 050070 W') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M05 PSRS 32E 084118') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M05 PSRSA 32E 050070 ') union
select 2,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M05 PSSD 25 070100 R9005') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M05 PSSS 25E 050070 ') union
select 3,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 BS FBS 3A4 LP ') union
select 4,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 BS FBS 5A4 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 BS PR NEO 6A4 ') union
select 6,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 BS PZ 3A4 ') union
select 75,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 BS R1 3A4 ') union
select 2,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 BS SA 6A4 ') union
select 26,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 BS T A4 D SB') union
select 7,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 BS T A4 D SB LP') union
select 48,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 BS T A4 Y SB') union
select 4,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 BS T A4 Y SB LP') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 BS T2 10A4 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 BS T4 20A4 ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 BSD 342 S ') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 BSD 442 S GOLD') union
select 5,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M06 GBS P 342 ') union
select 10,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M08 PFSS C25 021030 CPx') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M09 FSSEG1620') union
select 2,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M09 FSSEG1824') union
select 4,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M09 FSSEG2436') union
select 45,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M10 SC NBS H1 V2 AC WP') union
select 4,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M10 SC NBS H3 V3 AC LED') union
select 1,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M10 SC NBS H3 V3 TC WP') union
select 3,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M11 ORM 3x4 DZ PC') union
select 9,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M11 ORM 4x3 E TKx') union
select 2,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M11 Pano D DZ90 BY ') union
select 50,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M11 Pano D OV70 BY ') union
select 25,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M11 Pano D OV90 BY ') union
select 5,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M11 Pano FF45K LED 803690 9005') union
select 240,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M12 BR R E CH 940 RED  ') union
select 400,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M12 BR R E SH 940 000') union
select 45,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M14 EB 060200 ') union
select 108,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M14 EB 070200 ') union
select 186,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M14 EB 080200 ') union
select 110,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M14 EB 100200 ') union
select 7,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M17 CBF 060084 ') union
select 6,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M19 HCEP A4 Y') union
select 120,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M19 HCEP A5 D') union
select 24,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M19 HCEP A5 Y') union
select 2350,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 BHE WM A4 X30') union
select 70,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LH WIAC 210061 X10') union
select 25,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LH WIAC 297105 X10') union
select 16,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHA 1007 CPx') union
select 19,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHA 2110 CPx') union
select 100,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHI 1115 CPx10') union
select 29,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHI 1121 CPx  ') union
select 330,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHI 1521 CPx10') union
select 40,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHI 2111 CPx  ') union
select 80,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHI 2130 CPx10') union
select 30,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHT 1115 CPx  ') union
select 26,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHT 1521 CPx  ') union
select 15,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHT 2130 CPx  ') union
select 17,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHT 3021 CPx  ') union
select 890,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHV 1115 CPx10') union
select 102,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHV 1121 CPx  ') union
select 35,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHV 1510 CPx') union
select 28,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHV 1521 CPx  ') union
select 13,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHV 2115 CPx  ') union
select 1090,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHV 2130 CPx10') union
select 17,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'M20 LHV 3021 CPx  ') union
select 56,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'SP19 10 0A4') union
select 632,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'T05 RUEC 100200') union
select 790,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'T05 RUEC 080200') union
select 50,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'T05 RUEC 085200') union
select 4,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'T02 PDK2 3338117') union
select 4,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'T02 PDK 1385') union
select 96,* from Gusto00001.DepoStokMiktar where pDepoKodu = 3 and pStokKodu =(select StokKodu_Rowid from Gusto00001.StokKodu where sKod = 'T05 RUEC DS 085200')



GO