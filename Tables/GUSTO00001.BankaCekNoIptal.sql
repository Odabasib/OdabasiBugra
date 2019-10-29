﻿CREATE TABLE [GUSTO00001].[BankaCekNoIptal] (
  [BankaCekNoIptal_rowid] [int] IDENTITY,
  [pSeriTanimi] [int] NULL DEFAULT (0),
  [nCekNumarasi] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [dtTarih] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([BankaCekNoIptal_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [SeriTanimiKey]
  ON [GUSTO00001].[BankaCekNoIptal] ([pSeriTanimi], [nCekNumarasi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO