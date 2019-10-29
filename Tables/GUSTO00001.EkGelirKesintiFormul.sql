CREATE TABLE [GUSTO00001].[EkGelirKesintiFormul] (
  [EkGelirKesintiFormul_rowid] [int] IDENTITY,
  [pEkGelirKesinti] [int] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  [nSatirSira] [smallint] NULL DEFAULT (0),
  [nSatirTuru] [smallint] NULL DEFAULT (0),
  [cIslem] [char](1) NULL DEFAULT (' '),
  [pNesneAddr] [int] NULL DEFAULT (0),
  [nSureUcretTipi] [smallint] NULL DEFAULT (0),
  [ldSabitDeger] [decimal](22, 6) NULL DEFAULT (0),
  [sFonksiyon] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([EkGelirKesintiFormul_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [EkGelirKesinti_Tur]
  ON [GUSTO00001].[EkGelirKesintiFormul] ([pEkGelirKesinti])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO