﻿CREATE TABLE [GUSTO00001].[EDISablonBaslik] (
  [EDISablonBaslik_rowid] [int] IDENTITY,
  [sKod] [varchar](15) NULL DEFAULT (''),
  [sAd] [varchar](50) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EDISablonBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sKod]
  ON [GUSTO00001].[EDISablonBaslik] ([sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO