SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[Proc_DepoStokMiktarGuncelle]
as
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;

insert into Gusto00001.DepoStokMiktar (Pdepokodu, Pstokkodu, pIzlemeKodu, Ldbirincibirim, ldIkinciBirim, Lducuncubirim, Ldrezerveedilmismiktar1, Ldrezerveedilmismiktar2, Ldrezerveedilmismiktar3, Nengelleuyarserbest)
select  t.pdepokodu, t.pstokkodu, t.izlemeKodu, t.birinciBirim, t.ikinciBirim, t.ucuncuBirim, t.rezerve1, t.rezerve2, t.rezerve3, t.engelleUyarSerbest 
from 
(
  select distinct dsm.pdepokodu, dsm.pstokkodu, 0 izlemeKodu, 0 birinciBirim, 0 ikinciBirim, 0 ucuncuBirim, 0 rezerve1, 0 rezerve2, 0 rezerve3, 0 engelleUyarSerbest
  from Gusto00001.DepoStokMiktar dsm where dsm.pIzlemeKodu > 0 and not exists
  (select * from Gusto00001.DepoStokMiktar dsm2 where dsm2.pstokkodu = dsm.pstokkodu and dsm2.pdepokodu = dsm.pdepokodu and dsm2.pIzlemeKodu = 0)
  group by dsm.pdepokodu, dsm.pstokkodu
) t;


update Gusto00001.depostokmiktar
set ldbirincibirim=0,ldIkincibirim=0,lducuncubirim=0,
ldRezerveEdilmisMiktar1=0,ldRezerveEdilmisMiktar2=0,ldRezerveEdilmisMiktar3=0;

update GUSTO00001.DepoStokMiktar set nEngelleUyarSerbest=0 where pDepoKodu in (1,3);
update GUSTO00001.DepoStokMiktar set nEngelleUyarSerbest=2 where pDepoKodu not in (1,3);

update Gusto00001.depostokmiktar 
set ldbirincibirim = isnull((select sum( case(cgiriscikis) when '0' then ldmiktar1  else -ldmiktar1 end) 
from Gusto00001.depohareket dh where dh.pdepo= depostokmiktar.pdepokodu and  dh.pstokkodu=depostokmiktar.pstokkodu and  dh.pIzlemekodu=0),0) 
where depostokmiktar.pIzlemekodu=0;

update Gusto00001.depostokmiktar 
set ldIkincibirim = isnull((select sum( case(cgiriscikis) when '0' then ldmiktar2  else -ldmiktar2 end) 
from Gusto00001.depohareket dh where dh.pdepo= depostokmiktar.pdepokodu and  dh.pstokkodu=depostokmiktar.pstokkodu and  dh.pIzlemekodu=0),0) 
where depostokmiktar.pIzlemekodu=0;

update Gusto00001.depostokmiktar 
set ldUcuncubirim = isnull((select sum( case(cgiriscikis) when '0' then ldmiktar3  else -ldmiktar3 end) 
from Gusto00001.depohareket dh where dh.pdepo= depostokmiktar.pdepokodu and  dh.pstokkodu=depostokmiktar.pstokkodu and  dh.pIzlemekodu=0),0) 
where depostokmiktar.pIzlemekodu=0;

/****************************/
--update Gusto00001.depostokmiktar 
--set ldbirincibirim = isnull((select sum( case(cgiriscikis) when '0' then ldmiktar1  else -ldmiktar1 end) 
--from Gusto00001.depohareket dh where dh.pdepo=depostokmiktar.pdepokodu and  dh.pstokkodu=depostokmiktar.pstokkodu and  dh.pIzlemekodu=depostokmiktar.pIzlemekodu),0.0)
--where depostokmiktar.pIzlemekodu!=0;

--update Gusto00001.depostokmiktar 
--set ldIkincibirim = isnull((select sum( case(cgiriscikis) when '0' then ldmiktar2  else -ldmiktar2 end) 
--from Gusto00001.depohareket dh where dh.pdepo=depostokmiktar.pdepokodu and  dh.pstokkodu=depostokmiktar.pstokkodu and  dh.pIzlemekodu=depostokmiktar.pIzlemekodu),0.0)
--where depostokmiktar.pIzlemekodu!=0;

--update Gusto00001.depostokmiktar 
--set ldUcuncubirim = isnull((select sum( case(cgiriscikis) when '0' then ldmiktar3  else -ldmiktar3 end) 
--from Gusto00001.depohareket dh where dh.pdepo=depostokmiktar.pdepokodu and  dh.pstokkodu=depostokmiktar.pstokkodu and  dh.pIzlemekodu=depostokmiktar.pIzlemekodu),0.0)
--where depostokmiktar.pIzlemekodu!=0;

/*************************************/

--update Gusto00001.depostokmiktar 
--set ldbirincibirim =isnull((select sum(ldbirincibirim)
--from Gusto00001.depostokmiktar ds
--where ds.pdepokodu=depostokmiktar.pdepokodu and  ds.pstokkodu=depostokmiktar.pstokkodu and ds.pIzlemekodu != 0),0.0)
--where depostokmiktar.pIzlemekodu=0 and depostokmiktar.pstokkodu in (select distinct pstokkodu from Gusto00001.depostokmiktar ds2 where ds2.pIzlemekodu!=0);

--update Gusto00001.depostokmiktar
--set ldIkincibirim =isnull((select sum(ldIkincibirim)
--from Gusto00001.depostokmiktar ds
--where ds.pdepokodu=depostokmiktar.pdepokodu and  ds.pstokkodu=depostokmiktar.pstokkodu and ds.pIzlemekodu != 0),0.0)
--where depostokmiktar.pIzlemekodu=0 and depostokmiktar.pstokkodu in (select distinct pstokkodu from Gusto00001.depostokmiktar ds2 where ds2.pIzlemekodu!=0);

--update Gusto00001.depostokmiktar
--set ldUcuncubirim =isnull((select sum(ldUcuncubirim)
--from Gusto00001.depostokmiktar ds
--where ds.pdepokodu=depostokmiktar.pdepokodu and  ds.pstokkodu=depostokmiktar.pstokkodu and ds.pIzlemekodu != 0),0.0)
--where depostokmiktar.pIzlemekodu=0 and depostokmiktar.pstokkodu in (select distinct pstokkodu from Gusto00001.depostokmiktar ds2 where ds2.pIzlemekodu!=0);

/*************************************/
--delete from Gusto00001.depostokmiktar
--where ldbirincibirim=0 and ldIkincibirim=0 and lducuncubirim=0
--and ldRezerveEdilmisMiktar1=0 and ldRezerveEdilmisMiktar2=0 and ldRezerveEdilmisMiktar3=0;

/***************************************************/
update Gusto00001.stokdetay
set ldBirinciBirim
=isnull((select sum(ldbirincibirim)
from Gusto00001.depostokmiktar ds
where ds.pstokkodu=stokdetay.pstokkodu and ds.pIzlemekodu=0),0.0);

update Gusto00001.stokdetay
set ldIkinciBirim
=isnull((select sum(ldIkincibirim)
from Gusto00001.depostokmiktar ds
where ds.pstokkodu=stokdetay.pstokkodu and ds.pIzlemekodu=0),0.0);

update Gusto00001.stokdetay
set ldUcuncuBirim
=isnull((select sum(ldUcuncubirim)
from Gusto00001.depostokmiktar ds
where ds.pstokkodu=stokdetay.pstokkodu and ds.pIzlemekodu=0),0.0);

/*****************************************/
--update Gusto00001.Izlemedetay 
--set ldBirinciBirim
--=isnull((select sum(ldbirincibirim) from Gusto00001.depostokmiktar ds
--where ds.pIzlemekodu=Izlemedetay.pIzlemekodu),0.0);

--update Gusto00001.Izlemedetay 
--set ldIkinciBirim
--=isnull((select sum(ldIkincibirim) from Gusto00001.depostokmiktar ds
--where ds.pIzlemekodu=Izlemedetay.pIzlemekodu),0.0);

--update Gusto00001.Izlemedetay 
--set ldUcuncuBirim
--=isnull((select sum(ldUcuncubirim) from Gusto00001.depostokmiktar ds
--where ds.pIzlemekodu=Izlemedetay.pIzlemekodu),0.0);

COMMIT TRANSACTION
END TRY
BEGIN CATCH
DECLARE 
@ErrorMessage NVARCHAR(4000),
@ErrorSeverity INT,
@ErrorState INT;
SELECT 
@ErrorMessage = ERROR_MESSAGE(),
@ErrorSeverity = ERROR_SEVERITY(),
@ErrorState = ERROR_STATE();
RAISERROR (
@ErrorMessage,
@ErrorSeverity,
@ErrorState    
);
ROLLBACK TRANSACTION
END CATCH
GO