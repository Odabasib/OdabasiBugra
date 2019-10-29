﻿CREATE TABLE [GUSTO00003].[UrunMaliyetiBaslik] (
  [UrunMaliyetiBaslik_rowid] [int] IDENTITY,
  [dtTarih] [smalldatetime] NULL,
  [pIslemID] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UrunMaliyetiBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [dtTarih]
  ON [GUSTO00003].[UrunMaliyetiBaslik] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00003].[UrunMaliyetiBaslik] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO