CREATE TABLE [GUSTO00004].[AracLastikDetayi] (
  [AracLastikDetayi_rowid] [int] IDENTITY,
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [cDetayTuru] [char](1) NULL DEFAULT (' '),
  [ldDetayKm] [decimal](22, 6) NULL DEFAULT (0),
  [ldDisDerinligi] [decimal](22, 6) NULL DEFAULT (0),
  [dtDetay] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AracLastikDetayi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO