﻿CREATE TABLE [GUSTO00005].[SCKasaSorumlu] (
  [SCKasaSorumlu_rowid] [int] IDENTITY,
  [pKasa] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SCKasaSorumlu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKasa]
  ON [GUSTO00005].[SCKasaSorumlu] ([pKasa])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pPersonel]
  ON [GUSTO00005].[SCKasaSorumlu] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO