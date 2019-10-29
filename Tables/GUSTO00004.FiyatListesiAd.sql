CREATE TABLE [GUSTO00004].[FiyatListesiAd] (
  [FiyatListesiAd_rowid] [int] IDENTITY,
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [sFiyatListesiAdi] [varchar](30) NULL DEFAULT (''),
  [cGirisCikis] [char](1) NOT NULL DEFAULT ('1'),
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [dtBaslangicTarih] [smalldatetime] NULL,
  [dtBitisTarih] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [bTumKullanicilar] [bit] NULL DEFAULT (0),
  [bTumCariler] [bit] NULL DEFAULT (0),
  [bOndegerMi] [bit] NULL DEFAULT (0),
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FiyatListesiAd_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO