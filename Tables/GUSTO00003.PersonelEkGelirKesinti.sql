CREATE TABLE [GUSTO00003].[PersonelEkGelirKesinti] (
  [PersonelEkGelirKesinti_rowid] [int] IDENTITY,
  [nTip] [tinyint] NULL DEFAULT (0),
  [nYil] [int] NULL DEFAULT (0),
  [nAy] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [pEkGelirKesinti] [int] NULL DEFAULT (0),
  [ldPuan] [decimal](22, 2) NULL DEFAULT (0),
  [bAliyor] [bit] NULL DEFAULT (0),
  [ldBrutTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pIkramiyeTanimi] [int] NULL DEFAULT (0),
  [ldhdBrutTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdBrutTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pIsyeri] [int] NULL DEFAULT (0),
  [nBESDurum] [smallint] NULL DEFAULT (0),
  [ldDamgaVergisiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldGelirVergisiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKPrimUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciIssizlikSigortasiUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldSGKMuafiyetUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldGVMuafiyetUcreti] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelEkGelirKesinti_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [EkGelirYilAyKey]
  ON [GUSTO00003].[PersonelEkGelirKesinti] ([pEkGelirKesinti], [pIkramiyeTanimi], [pIsyeri])
  ON [PRIMARY]
GO

CREATE INDEX [PersonelTipYilAyKey]
  ON [GUSTO00003].[PersonelEkGelirKesinti] ([pPersonel])
  ON [PRIMARY]
GO