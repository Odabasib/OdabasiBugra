SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_AnaUretimDepoMiktarlari] as
select s.StokKodu_rowid,case when AnaDepo.Sayi=1 then AnaDepo.Miktar else 0 end AnaDepoMiktarı,
case when UrtDepo.Sayi=1 then UrtDepo.Miktar else 0 end UretimDepoMiktari  from GUSTO00001.StokKodu s
left join (select sum(ldBirinciBirim) Miktar,COUNT(*) Sayi,pStokKodu from GUSTO00001.DepoStokMiktar where pDepoKodu=2 group by pStokKodu)UrtDepo on UrtDepo.pStokKodu=s.StokKodu_rowid
left join (select sum(ldBirinciBirim) Miktar,COUNT(*) Sayi,pStokKodu from GUSTO00001.DepoStokMiktar where pDepoKodu=1 group by pStokKodu)AnaDepo on AnaDepo.pStokKodu=s.StokKodu_rowid
GO