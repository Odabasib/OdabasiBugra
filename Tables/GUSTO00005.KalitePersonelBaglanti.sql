CREATE TABLE [GUSTO00005].[KalitePersonelBaglanti] (
  [KalitePersonelBaglanti_rowid] [int] IDENTITY,
  [cKaynakTuru] [char](1) NULL DEFAULT (' '),
  [pKaynak] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [nPersonelYuzde] [smallint] NULL DEFAULT (0),
  [pPersonelTanim] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KalitePersonelBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO