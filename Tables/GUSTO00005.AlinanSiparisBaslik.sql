CREATE TABLE [GUSTO00005].[AlinanSiparisBaslik] (
  [AlinanSiparisBaslik_rowid] [int] IDENTITY,
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [dtTeslimTarihi] [smalldatetime] NULL,
  [tmTeslimZamani] [int] NULL DEFAULT (0),
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
  [cTeslimatDurumu] [char](1) NULL DEFAULT (' '),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [dtKapatma] [smalldatetime] NULL,
  [pKapatanKullanici] [int] NULL DEFAULT (0),
  [cAcikKapali] [char](1) NULL DEFAULT (' '),
  [cSiparisDondurulmus] [char](1) NULL DEFAULT (' '),
  [dtSiparisDondurmaTarihi] [smalldatetime] NULL,
  [sSiparisDondurmaAciklama] [varchar](120) NULL DEFAULT (''),
  [pSiparisDonduranKullanici] [int] NULL DEFAULT (0),
  [cSevkEmrineAktarildi] [char](1) NULL DEFAULT (' '),
  [pFiyatListesi] [int] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AlinanSiparisBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CariTarihKey]
  ON [GUSTO00005].[AlinanSiparisBaslik] ([pCari], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PersonelSeriNoKey]
  ON [GUSTO00005].[AlinanSiparisBaslik] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriNoKey]
  ON [GUSTO00005].[AlinanSiparisBaslik] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TarihKey]
  ON [GUSTO00005].[AlinanSiparisBaslik] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TeslimTarKey]
  ON [GUSTO00005].[AlinanSiparisBaslik] ([dtTeslimTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO