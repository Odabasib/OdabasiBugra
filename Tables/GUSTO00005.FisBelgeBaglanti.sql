CREATE TABLE [GUSTO00005].[FisBelgeBaglanti] (
  [FisBelgeBaglanti_rowid] [int] IDENTITY,
  [pYevmiyeHareketi] [int] NOT NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldHesapDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [ldHareketDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDoviz] [decimal](22, 2) NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FisBelgeBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00005].[FisBelgeBaglanti] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pYevmiyeHareketi]
  ON [GUSTO00005].[FisBelgeBaglanti] ([pYevmiyeHareketi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO