﻿CREATE TABLE [GUSTO00003].[YazarKasaKisim] (
  [YazarKasaKisim_rowid] [int] IDENTITY,
  [pYazarKasa] [int] NULL DEFAULT (0),
  [sKisimAdi] [varchar](50) NULL DEFAULT (''),
  [nKisimNo] [int] NULL DEFAULT (0),
  [nKDVGrupNo] [tinyint] NULL DEFAULT (0),
  [nSatisSekli] [tinyint] NULL DEFAULT (0),
  [ldBirimFiyat] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YazarKasaKisim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pYazarKasa]
  ON [GUSTO00003].[YazarKasaKisim] ([pYazarKasa])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO