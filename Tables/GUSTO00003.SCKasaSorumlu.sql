CREATE TABLE [GUSTO00003].[SCKasaSorumlu] (
  [SCKasaSorumlu_rowid] [int] IDENTITY,
  [pKasa] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SCKasaSorumlu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKasa]
  ON [GUSTO00003].[SCKasaSorumlu] ([pKasa])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pPersonel]
  ON [GUSTO00003].[SCKasaSorumlu] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO