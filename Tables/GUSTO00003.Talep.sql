CREATE TABLE [GUSTO00003].[Talep] (
  [Talep_rowid] [int] IDENTITY,
  [sSeri] [varchar](60) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  [dtTarih] [smalldatetime] NULL,
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [pTopluTalep] [int] NULL DEFAULT (0),
  [cOnayDurumu] [char](1) NULL DEFAULT ('G'),
  [cKarsilamaDurumu] [char](1) NULL DEFAULT (' '),
  [cStokHizmet] [char](1) NOT NULL DEFAULT (' '),
  [pStok] [int] NOT NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [ldTalepMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NULL DEFAULT (' '),
  [ldOnaylananMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldRezervasyonMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldKarsilananMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [dtEnGecTeslimTarihi] [smalldatetime] NULL,
  [dtSiparisVermeTarihi] [smalldatetime] NULL,
  [tmEnGecTeslimSaati] [int] NULL DEFAULT (0),
  [sTeslimYeriAciklamasi] [varchar](60) NULL DEFAULT (''),
  [pTeslimDepoKodu] [int] NULL DEFAULT (0),
  [pTeslimYerKodu] [int] NULL DEFAULT (0),
  [bDahiliKullanim] [bit] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [ldTahminiBirimFiyat] [decimal](22, 9) NULL DEFAULT (0),
  [ldTahminiBirimFiyatDoviz] [decimal](22, 9) NULL DEFAULT (0),
  [pOrganizasyon] [int] NULL DEFAULT (0),
  [pButce] [int] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [cTalepDondurulmus] [char](1) NULL DEFAULT ('H'),
  [pDonduranKullanici] [int] NULL DEFAULT (0),
  [dtDondurma] [smalldatetime] NULL,
  [tmDonturma] [int] NULL DEFAULT (0),
  [pMRPBaslik] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Talep_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [pMRPBaslik]
  ON [GUSTO00003].[Talep] ([pMRPBaslik])
  ON [PRIMARY]
GO

CREATE INDEX [StokKey]
  ON [GUSTO00003].[Talep] ([pStok], [pIzlemeKodu])
  ON [PRIMARY]
GO

CREATE INDEX [TalepSeriNoKey]
  ON [GUSTO00003].[Talep] ([lNo])
  ON [PRIMARY]
GO

CREATE INDEX [TalepTarihKey]
  ON [GUSTO00003].[Talep] ([dtTarih])
  ON [PRIMARY]
GO

CREATE INDEX [TopluTalepSeriKey]
  ON [GUSTO00003].[Talep] ([pTopluTalep])
  ON [PRIMARY]
GO