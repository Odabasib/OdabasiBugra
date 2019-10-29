CREATE TABLE [GUSTO00001].[HareketDegiskenleri] (
  [HareketDegiskenleri_rowid] [int] IDENTITY,
  [cTur] [char](1) NOT NULL DEFAULT ('U'),
  [pHareket] [int] NULL DEFAULT (0),
  [pIsEmri] [int] NULL DEFAULT (0),
  [ldMiktar1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar3] [decimal](22, 6) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HareketDegiskenleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO