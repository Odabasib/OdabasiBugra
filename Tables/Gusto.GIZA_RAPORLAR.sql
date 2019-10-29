﻿CREATE TABLE [Gusto].[GIZA_RAPORLAR] (
  [GIZA_RAPORLAR_ROWID] [int] IDENTITY,
  [PLISTE] [int] NULL DEFAULT (0),
  [POBJECT] [image] NULL,
  PRIMARY KEY CLUSTERED ([GIZA_RAPORLAR_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IndGIZA_RAPORLAR]
  ON [Gusto].[GIZA_RAPORLAR] ([PLISTE])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO