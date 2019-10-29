SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view
[GUSTO00001].[V_StokDepoDurum] as 

select 
sk.StokKodu_Rowid,

(
isnull(ana.ldBirinciBirim,0)+isnull(urt.ldBirinciBirim,0) + isnull(mam.ldBirinciBirim,0)+isnull(tozboya.ldBirinciBirim,0)+isnull(yasboya.ldBirinciBirim,0)+
isnull(bakaplama.ldBirinciBirim,0)+isnull(kaplama.ldBirinciBirim,0)+isnull(sevkiyat.ldBirinciBirim,0)+isnull(torna.ldBirinciBirim,0)+
isnull(baski.ldBirinciBirim,0)+isnull(dila.ldBirinciBirim,0) 
) 'GENEL TOPLAM'
from Gusto00001.StokKodu sk
left join 
(select dk.sKod,dk.sAd,dsk.ldBirinciBirim,dsk.ldIkinciBirim,dsk.pStokKodu,dk.DepoKodu_rowid
from Gusto00001.DepoKodu dk
left join Gusto00001.DepoStokMiktar dsk on dsk.pDepoKodu = dk.DepoKodu_rowid where dk.sKod='001') ana
on ana.pStokKodu=sk.StokKodu_rowid
left join
(select dk.sKod,dk.sAd,dsk.ldBirinciBirim,dsk.ldIkinciBirim,dsk.pStokKodu,DepoKodu_rowid 
from Gusto00001.DepoKodu dk
left join Gusto00001.DepoStokMiktar dsk on dsk.pDepoKodu = dk.DepoKodu_rowid where dk.sKod='002') urt
on urt.pStokKodu=sk.StokKodu_rowid
left join
(select dk.sKod,dk.sAd,dsk.ldBirinciBirim,dsk.ldIkinciBirim,dsk.pStokKodu,DepoKodu_rowid 
from Gusto00001.DepoKodu dk
left join Gusto00001.DepoStokMiktar dsk on dsk.pDepoKodu = dk.DepoKodu_rowid where dk.sKod='003') mam
on mam.pStokKodu=sk.StokKodu_rowid
left join
(select dk.sKod,dk.sAd,dsk.ldBirinciBirim,dsk.ldIkinciBirim,dsk.pStokKodu from Gusto00001.DepoKodu dk
left join Gusto00001.DepoStokMiktar dsk on dsk.pDepoKodu = dk.DepoKodu_rowid where dk.sKod='004') tozboya
on tozboya.pStokKodu=sk.StokKodu_rowid
left join
(select dk.sKod,dk.sAd,dsk.ldBirinciBirim,dsk.ldIkinciBirim,dsk.pStokKodu from Gusto00001.DepoKodu dk
left join Gusto00001.DepoStokMiktar dsk on dsk.pDepoKodu = dk.DepoKodu_rowid where dk.sKod='005') yasboya
on yasboya.pStokKodu=sk.StokKodu_rowid
left join
(select dk.sKod,dk.sAd,dsk.ldBirinciBirim,dsk.ldIkinciBirim,dsk.pStokKodu from Gusto00001.DepoKodu dk
left join Gusto00001.DepoStokMiktar dsk on dsk.pDepoKodu = dk.DepoKodu_rowid where dk.sKod='006') bakaplama
on bakaplama.pStokKodu=sk.StokKodu_rowid
left join
(select dk.sKod,dk.sAd,dsk.ldBirinciBirim,dsk.ldIkinciBirim,dsk.pStokKodu from Gusto00001.DepoKodu dk
left join Gusto00001.DepoStokMiktar dsk on dsk.pDepoKodu = dk.DepoKodu_rowid where dk.sKod='007') kaplama
on kaplama.pStokKodu=sk.StokKodu_rowid
left join
(select dk.sKod,dk.sAd,dsk.ldBirinciBirim,dsk.ldIkinciBirim,dsk.pStokKodu from Gusto00001.DepoKodu dk
left join Gusto00001.DepoStokMiktar dsk on dsk.pDepoKodu = dk.DepoKodu_rowid where dk.sKod='008') sevkiyat
on sevkiyat.pStokKodu=sk.StokKodu_rowid
left join
(select dk.sKod,dk.sAd,dsk.ldBirinciBirim,dsk.ldIkinciBirim,dsk.pStokKodu from Gusto00001.DepoKodu dk
left join Gusto00001.DepoStokMiktar dsk on dsk.pDepoKodu = dk.DepoKodu_rowid where dk.sKod='009') torna
on torna.pStokKodu=sk.StokKodu_rowid
left join
(select dk.sKod,dk.sAd,dsk.ldBirinciBirim,dsk.ldIkinciBirim,dsk.pStokKodu from Gusto00001.DepoKodu dk
left join Gusto00001.DepoStokMiktar dsk on dsk.pDepoKodu = dk.DepoKodu_rowid where dk.sKod='010') baski
on baski.pStokKodu=sk.StokKodu_rowid
left join
(select dk.sKod,dk.sAd,dsk.ldBirinciBirim,dsk.ldIkinciBirim,dsk.pStokKodu from Gusto00001.DepoKodu dk
left join Gusto00001.DepoStokMiktar dsk on dsk.pDepoKodu = dk.DepoKodu_rowid where dk.sKod='011') dila
on dila.pStokKodu=sk.StokKodu_rowid
where sk.nChildcount = 0 



GO