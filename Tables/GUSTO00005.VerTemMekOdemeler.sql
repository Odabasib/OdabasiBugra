CREATE TABLE [GUSTO00005].[VerTemMekOdemeler] (
  [VerTemMekOdemeler_rowid] [int] IDENTITY,
  [pMektup] [int] NULL DEFAULT (0),
  [nKacinciOdeme] [smallint] NULL DEFAULT (0),
  [dtOdemeGunu] [smalldatetime] NULL,
  [dKomisyonOrani] [decimal](22, 4) NULL DEFAULT (0),
  [dDamgaVergisiOrani] [real] NULL DEFAULT (0.000000),
  [dBSMVOrani] [real] NULL DEFAULT (0.000000),
  [dKKDFOrani] [real] NULL DEFAULT (0.000000),
  [ldKomisyonTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldDamgaVergisiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldBSMVTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldKKDFTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdKomisyonTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdDamgaVergisiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdBSMVTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdKKDFTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdKomisyonTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdDamgaVergisiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdBSMVTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdKKDFTutari] [decimal](22, 2) NULL DEFAULT (0),
  [pBankaHareket] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [cOdemeDonemi] [char](1) NULL DEFAULT (' '),
  [nOdemePeriyodu] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VerTemMekOdemeler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [dtOdemeGunu]
  ON [GUSTO00005].[VerTemMekOdemeler] ([dtOdemeGunu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [GercekHarTarihKey]
  ON [GUSTO00005].[VerTemMekOdemeler] ([pBankaHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MektupOdemeKey]
  ON [GUSTO00005].[VerTemMekOdemeler] ([pMektup])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO