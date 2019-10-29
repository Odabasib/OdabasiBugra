CREATE TABLE [GUSTO00004].[AktarmaBaglanti] (
  [AktarmaBaglanti_rowid] [int] IDENTITY,
  [sKaynakTuru] [varchar](2) NULL DEFAULT (''),
  [pKaynak] [int] NULL DEFAULT (0),
  [sHedefTuru] [varchar](2) NULL DEFAULT (''),
  [pHedef] [int] NULL DEFAULT (0),
  [cDurum] [char](1) NULL DEFAULT (' '),
  [ldKarsilananMiktar1] [decimal](22, 6) NULL DEFAULT (0),
  [ldKarsilananMiktar2] [decimal](22, 6) NULL DEFAULT (0),
  [ldKarsilananMiktar3] [decimal](22, 6) NULL DEFAULT (0),
  [bRezervasyonVar] [bit] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AktarmaBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [HedefTur]
  ON [GUSTO00004].[AktarmaBaglanti] ([pHedef])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KaynakTur]
  ON [GUSTO00004].[AktarmaBaglanti] ([pKaynak])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO