CREATE TABLE [GUSTO00005].[HesapDetayi] (
  [HesapDetayi_rowid] [int] IDENTITY,
  [pHesapKodu] [int] NOT NULL DEFAULT (0),
  [cBakiyeSekli] [char](1) NULL DEFAULT (' '),
  [bBakiyeUyari] [bit] NULL DEFAULT (0),
  [cCalismaSekli] [char](1) NULL DEFAULT (' '),
  [cCalismaEngeli] [char](1) NULL DEFAULT (' '),
  [pKambiyoKari] [int] NULL DEFAULT (0),
  [pKambiyoZarari] [int] NULL DEFAULT (0),
  [pDovizYeriAlacak] [int] NULL DEFAULT (0),
  [pDovizYeriBorc] [int] NULL DEFAULT (0),
  [cDovizTuruAlacak] [char](1) NULL DEFAULT (' '),
  [cDovizTuruBorc] [char](1) NULL DEFAULT (' '),
  [dtMutabakatTarihi] [smalldatetime] NULL,
  [bParasal] [bit] NULL DEFAULT (0),
  [pSonEnflasyonDonemi] [int] NULL DEFAULT (0),
  [nEntegrasyonKaydi] [tinyint] NULL DEFAULT (2),
  PRIMARY KEY CLUSTERED ([HesapDetayi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO