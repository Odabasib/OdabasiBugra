﻿CREATE TABLE [GUSTO00005].[CariAlacakDekontu] (
  [CariAlacakDekontu_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [sTeslimAlan] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([CariAlacakDekontu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CDekAlcSeriNoKey]
  ON [GUSTO00005].[CariAlacakDekontu] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CDekAlcTarihSeriNoKey]
  ON [GUSTO00005].[CariAlacakDekontu] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO