CREATE TABLE [GUSTO00001].[StokDonemDevirleri] (
  [StokDonemDevirleri_rowid] [int] IDENTITY,
  [pDonem] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [cStokHizmetDemirbas] [char](1) NULL DEFAULT (' '),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pDepoKodu] [int] NULL DEFAULT (0),
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [ldMiktar1Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar2Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar3Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldTutar] [decimal](22, 6) NULL DEFAULT (0),
  [ldTutarKdvsiz] [decimal](22, 6) NULL DEFAULT (0),
  [ldMaliyettenKdvsiz] [decimal](22, 6) NULL DEFAULT (0),
  [ldFAMasrafTutari] [decimal](22, 6) NULL DEFAULT (0),
  [ldFAGenelMasrafTutari] [decimal](22, 6) NULL DEFAULT (0),
  [ldhdTutar] [decimal](22, 6) NULL DEFAULT (0),
  [ldhdTutarKdvsiz] [decimal](22, 6) NULL DEFAULT (0),
  [ldhdMaliyettenKdvsiz] [decimal](22, 6) NULL DEFAULT (0),
  [ldsdTutar] [decimal](22, 6) NULL DEFAULT (0),
  [ldsdTutarKdvsiz] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokDonemDevirleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO