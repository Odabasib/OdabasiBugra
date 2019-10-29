﻿CREATE TABLE [GUSTO00003].[MSDigerDetayDevami] (
  [MSDigerDetayDevami_rowid] [int] IDENTITY,
  [pMSDigerDetayi] [int] NULL DEFAULT (0),
  [ldRiskLimiti] [decimal](22, 2) NULL DEFAULT (0),
  [cRiskBorcmu] [char](1) NULL DEFAULT (' '),
  [cRiskDovizli] [char](1) NULL DEFAULT (' '),
  [cRiskKriteri] [char](1) NULL DEFAULT (' '),
  [cRiskKriteriBakiye] [char](1) NULL DEFAULT (' '),
  [cRiskLimitiArtiTeminatMektubu] [char](1) NULL DEFAULT (' '),
  [cRiskLimitiArtiTeminatCeki] [char](1) NULL DEFAULT (' '),
  [cRiskLimitiArtiTeminatSenedi] [char](1) NULL DEFAULT (' '),
  [cFaturaKapanisSekli] [char](1) NULL DEFAULT (' '),
  [dtSonMektupTarihi] [smalldatetime] NULL,
  [ldDovizIrsaliyeBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizIrsaliyeAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizFaturaBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizFaturaAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizIskontoBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizIskontoAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizKdvBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizKdvAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizIskontoFaturasiBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizIskontoFaturasiAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizHizmetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizHizmetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizIadeBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizIadeAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizNakitBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizNakitAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizDigerBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizDigerAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizBankaBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizBankaAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizCariBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizCariAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTeminatBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTeminatAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTeminatCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTeminatCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizGelirBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizGelirAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizProtestoluSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizProtestoluSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizKarsiliksizCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizKarsiliksizCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizSenetBakiyeBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizSenetBakiyeAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizCekBakiyeBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizCekBakiyeAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTeminatProtSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTeminatProtSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTeminatKarsCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTeminatKarsCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizIcradakiSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizIcradakiSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizIcradakiCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizIcradakiCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTeminatMektupVerilen] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTeminatMektupAlinan] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizKayipSenetler] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizKayipCekler] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizOdenmisProtSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizOdenmisProtSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizOdenmisKarsCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizOdenmisKarsCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizAlinanSiparisBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizAlinanSiparisAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizVerilenSiparisBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizVerilenSiparisAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizBankaHavaleBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizBankaHavaleAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizIrsaliyeBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizIrsaliyeAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizFaturaBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizFaturaAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizIskontoBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizIskontoAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizKdvBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizKdvAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizIskontoFatBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizIskontoFatAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizHizmetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizHizmetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizIadeBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizIadeAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizNakitBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizNakitAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizDigerBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizDigerAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizBankaBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizBankaAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizCariBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizCariAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizTeminatBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizTeminatAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizTeminatCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizTeminatCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizGelirBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizGelirAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizProtSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizProtSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizKarsCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizKarsCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDSenetBakiyeBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDSenetBakiyeAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDCekBakiyeBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDCekBakiyeAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDTeminatProtSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDTeminatProtSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDTeminatKarsCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDTeminatKarsCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDIcradakiSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDIcradakiSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDIcradakiCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDIcradakiCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDTeminatMektupVerilen] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDTeminatMektupAlinan] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizKayipSenet] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizKayipCek] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDOdenmisProtSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDOdenmisProtSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDOdenmisKarsCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDOdenmisKarsCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDAlinanSiparisBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDAlinanSiparisAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDVerilenSiparisBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDVerilenSiparisAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDBankaHavaleBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSDBankaHavaleAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldIrsaliyeBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldIrsaliyeAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldFaturaBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldFaturaAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldIskontoBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldIskontoAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldKdvBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldKdvAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldIskontoFaturasiBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldIskontoFaturasiAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldHizmetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldHizmetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldIadeBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldIadeAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldNakitBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldNakitAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldDigerBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldDigerAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldBankaBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldBankaAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldCariBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldCariAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldTeminatBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldTeminatAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldTeminatCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldTeminatCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldGelirBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldGelirAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldProtestoluSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldProtestoluSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldKarsiliksizCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldKarsiliksizCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldSenetBakiyeBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldSenetBakiyeAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldCekBakiyeBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldCekBakiyeAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldTeminatProtSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldTeminatProtSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldTeminatKarsCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldTeminatKarsCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldIcradakiSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldIcradakiSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldIcradakiCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldIcradakiCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldTeminatMektupVerilen] [decimal](22, 2) NULL DEFAULT (0),
  [ldTeminatMektupAlinan] [decimal](22, 2) NULL DEFAULT (0),
  [ldOdenmisProtSenetBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldOdenmisProtSenetAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldOdenmisKarsCekBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldOdenmisKarsCekAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldAlinanSiparisBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldAlinanSiparisAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldVerilenSiparisBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldVerilenSiparisAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldBankaHavaleBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldBankaHavaleAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldKayipCekler] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdKayipCekler] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdKayipCekler] [decimal](22, 2) NULL DEFAULT (0),
  [ldKayipSenetler] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdKayipSenetler] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdKayipSenetler] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MSDigerDetayDevami_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO