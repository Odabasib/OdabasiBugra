﻿CREATE TABLE [GUSTO00005].[IsEmriPersonelMesai] (
  [IsEmriPersonelMesai_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsEmriOperasyon] [int] NOT NULL DEFAULT (0),
  [pPersonelKodu] [int] NOT NULL DEFAULT (0),
  [dtMesaiTarihi] [smalldatetime] NOT NULL,
  [tmBaslamaSaati] [int] NULL DEFAULT (0),
  [tmBitisSaati] [int] NULL DEFAULT (0),
  [ldPlanlananMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [bFazlaMesai] [bit] NULL DEFAULT (0),
  [bGorevHariciGecikme] [bit] NULL DEFAULT (0),
  [sAciklama] [varchar](120) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([IsEmriPersonelMesai_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00005].[IsEmriPersonelMesai] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsEmriOperasyon]
  ON [GUSTO00005].[IsEmriPersonelMesai] ([pIsEmriOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO