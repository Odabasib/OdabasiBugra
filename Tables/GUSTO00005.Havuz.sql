CREATE TABLE [GUSTO00005].[Havuz] (
  [Havuz_rowid] [int] IDENTITY,
  [pModul] [int] NULL DEFAULT (0),
  [pModulConfig] [int] NULL DEFAULT (0),
  [nHareketTuru] [int] NULL DEFAULT (0),
  [sBarkod] [varchar](50) NULL DEFAULT (''),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [sIzlemeKodu] [varchar](50) NULL DEFAULT (''),
  [pDepoKodu1] [int] NULL DEFAULT (0),
  [pDepoKodu2] [int] NULL DEFAULT (0),
  [pCariKodu] [int] NULL DEFAULT (0),
  [pOperasyonKodu] [int] NULL DEFAULT (0),
  [pIsMerkeziKodu] [int] NULL DEFAULT (0),
  [pTezgahKodu] [int] NULL DEFAULT (0),
  [sVardiyaKodu] [varchar](50) NULL DEFAULT (''),
  [pAciklamaKodu] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktarBirim2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktarBirim3] [decimal](22, 6) NULL DEFAULT (0),
  [sBelgeSeri] [varchar](10) NULL DEFAULT (''),
  [nBelgeNo] [int] NULL DEFAULT (0),
  [sBelgeRef] [varchar](50) NULL DEFAULT (''),
  [sKaynakSeri] [varchar](10) NULL DEFAULT (''),
  [nKaynakNo] [int] NULL DEFAULT (0),
  [pSiparisSatir] [int] NULL DEFAULT (0),
  [sEtiket] [varchar](50) NULL DEFAULT (''),
  [pAktar] [int] NULL DEFAULT (0),
  [dtBasZaman] [smalldatetime] NULL,
  [tmBaslamaSaati] [int] NULL DEFAULT (0),
  [dtBitZaman] [smalldatetime] NULL,
  [tmBitisSaati] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pMKullanici] [int] NULL DEFAULT (0),
  [sDeviceIP] [varchar](50) NULL DEFAULT (''),
  [nAktarilmaDurumu] [smallint] NULL DEFAULT (0),
  [nOkutulmaSayisi] [smallint] NULL DEFAULT (0),
  [sPaketDurumu] [varchar](255) NULL DEFAULT (''),
  [bIzleKoduOlustur] [bit] NULL DEFAULT (0),
  [ldMiktarFire] [decimal](22, 6) NULL DEFAULT (0),
  [pOlusanBelge] [int] NULL DEFAULT (0),
  [nKurulumSuresiDk] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Havuz_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [nAktarilmaDurumu]
  ON [GUSTO00005].[Havuz] ([nAktarilmaDurumu])
  ON [PRIMARY]
GO