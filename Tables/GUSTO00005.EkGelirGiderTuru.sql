﻿CREATE TABLE [GUSTO00005].[EkGelirGiderTuru] (
  [EkGelirGiderTuru_rowid] [int] IDENTITY,
  [pEkGelirTanimi] [int] NULL DEFAULT (0),
  [pGorevTanimi] [int] NULL DEFAULT (0),
  [pGelirGiderTuru] [int] NULL DEFAULT (0),
  [pUnvanGrubu] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EkGelirGiderTuru_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pEkGelirTanimi]
  ON [GUSTO00005].[EkGelirGiderTuru] ([pEkGelirTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pGelirGiderTuru]
  ON [GUSTO00005].[EkGelirGiderTuru] ([pGelirGiderTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO