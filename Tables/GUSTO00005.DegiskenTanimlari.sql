﻿CREATE TABLE [GUSTO00005].[DegiskenTanimlari] (
  [DegiskenTanimlari_rowid] [int] IDENTITY,
  [cDegiskenTuru] [char](1) NOT NULL DEFAULT (' '),
  [sDegiskenAdi] [varchar](50) NOT NULL DEFAULT (''),
  [ldOndeger] [decimal](22, 2) NULL DEFAULT (6),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DegiskenTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [DegTuruAdi]
  ON [GUSTO00005].[DegiskenTanimlari] ([cDegiskenTuru], [sDegiskenAdi], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO