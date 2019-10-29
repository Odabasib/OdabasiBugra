CREATE TABLE [GUSTO00004].[VerilenTeklifBaslik] (
  [VerilenTeklifBaslik_rowid] [int] IDENTITY,
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [dtOpsiyon] [smalldatetime] NULL,
  [tmOpsiyon] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [pCari] [int] NULL DEFAULT (0),
  [pCariSozlesme] [int] NULL DEFAULT (0),
  [pBayi] [int] NULL DEFAULT (0),
  [bFaturaBayiyeKesilecek] [bit] NULL DEFAULT (0),
  [cSiparisBilgiFarkli] [char](1) NULL DEFAULT (' '),
  [pSiparisBilgi] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [ldToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [cOnayDurumu] [char](1) NULL DEFAULT ('G'),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [cAcikKapali] [char](1) NULL DEFAULT (' '),
  [pFiyatListesi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VerilenTeklifBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CariSeriNoKey]
  ON [GUSTO00004].[VerilenTeklifBaslik] ([pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [OpsiyonTarKey]
  ON [GUSTO00004].[VerilenTeklifBaslik] ([dtOpsiyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PersonelSeriNoKey]
  ON [GUSTO00004].[VerilenTeklifBaslik] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriNoKey]
  ON [GUSTO00004].[VerilenTeklifBaslik] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TarihKey]
  ON [GUSTO00004].[VerilenTeklifBaslik] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO