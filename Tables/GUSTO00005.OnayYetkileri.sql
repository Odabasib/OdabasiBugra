CREATE TABLE [GUSTO00005].[OnayYetkileri] (
  [OnayYetkileri_rowid] [int] IDENTITY,
  [pOnayTanimi] [int] NULL DEFAULT (0),
  [pKullanici] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OnayYetkileri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pOnayTanimi]
  ON [GUSTO00005].[OnayYetkileri] ([pOnayTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO