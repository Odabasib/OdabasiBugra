CREATE TABLE [GUSTO00003].[KasaSorumlu] (
  [KasaSorumlu_rowid] [int] IDENTITY,
  [pKasa] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KasaSorumlu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KasaSorumluKey]
  ON [GUSTO00003].[KasaSorumlu] ([pKasa])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PersonelKey]
  ON [GUSTO00003].[KasaSorumlu] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO