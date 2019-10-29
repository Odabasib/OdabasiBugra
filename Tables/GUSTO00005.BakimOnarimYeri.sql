﻿CREATE TABLE [GUSTO00005].[BakimOnarimYeri] (
  [BakimOnarimYeri_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
  [cTezgahIsMerkezi] [char](1) NULL DEFAULT ('T'),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BakimOnarimYeri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BakimYeriTuruKodu]
  ON [GUSTO00005].[BakimOnarimYeri] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00005].[BakimOnarimYeri] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00005].[BakimOnarimYeri] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO