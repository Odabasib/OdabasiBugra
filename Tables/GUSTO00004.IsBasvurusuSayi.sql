﻿CREATE TABLE [GUSTO00004].[IsBasvurusuSayi] (
  [IsBasvurusuSayi_rowid] [int] IDENTITY,
  [pTanimID] [int] NULL DEFAULT (0),
  [pOwnerID] [int] NULL DEFAULT (0),
  [ldSayi] [decimal](22, 2) NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsBasvurusuSayi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OwnerIDTanimIDKey]
  ON [GUSTO00004].[IsBasvurusuSayi] ([pOwnerID], [pTanimID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO