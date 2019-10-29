﻿CREATE TABLE [GUSTO00001].[Revizyon] (
  [Revizyon_rowid] [int] IDENTITY,
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [sRevizyonKodu] [varchar](30) NOT NULL DEFAULT (''),
  [sRevizyonAciklama] [varchar](60) NULL DEFAULT (''),
  [dtBasTarih] [smalldatetime] NULL,
  [dtBitTarih] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([Revizyon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [StokKodKey]
  ON [GUSTO00001].[Revizyon] ([pStokKodu], [sRevizyonKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO