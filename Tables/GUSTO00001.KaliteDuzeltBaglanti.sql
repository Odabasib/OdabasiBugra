CREATE TABLE [GUSTO00001].[KaliteDuzeltBaglanti] (
  [KaliteDuzeltBaglanti_rowid] [int] IDENTITY,
  [pHedef] [int] NULL DEFAULT (0),
  [cHareketTuru] [char](1) NULL DEFAULT (' '),
  [cKaynakTuru] [char](1) NULL DEFAULT (' '),
  [pHareket] [int] NULL DEFAULT (32),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KaliteDuzeltBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO