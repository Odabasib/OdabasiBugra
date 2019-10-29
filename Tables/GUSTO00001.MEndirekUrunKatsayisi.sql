CREATE TABLE [GUSTO00001].[MEndirekUrunKatsayisi] (
  [MEndirekUrunKatsayisi_rowid] [int] IDENTITY,
  [pEndirekMaliyet] [int] NULL DEFAULT (0),
  [pUrunler] [int] NOT NULL DEFAULT (0),
  [ldKatsayi] [decimal](22, 6) NOT NULL DEFAULT (0),
  [pIsMerkezi] [int] NOT NULL DEFAULT (0),
  [cTur] [char](1) NOT NULL DEFAULT ('U'),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MEndirekUrunKatsayisi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pEndirekMaliyet]
  ON [GUSTO00001].[MEndirekUrunKatsayisi] ([pEndirekMaliyet])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsMerkezi]
  ON [GUSTO00001].[MEndirekUrunKatsayisi] ([pIsMerkezi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO