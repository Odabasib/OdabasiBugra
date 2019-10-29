CREATE TABLE [GUSTO00001].[KasaSorumlu] (
  [KasaSorumlu_rowid] [int] IDENTITY,
  [pKasa] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KasaSorumlu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KasaSorumluKey]
  ON [GUSTO00001].[KasaSorumlu] ([pKasa])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PersonelKey]
  ON [GUSTO00001].[KasaSorumlu] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO