﻿CREATE TABLE [GUSTO00001].[FinBaglantiSablonu] (
  [FinBaglantiSablonu_rowid] [int] IDENTITY,
  [nModul] [int] NULL DEFAULT (0),
  [sSablonAdi] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FinBaglantiSablonu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [ModulAdKey]
  ON [GUSTO00001].[FinBaglantiSablonu] ([nModul], [sSablonAdi], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO