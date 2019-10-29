CREATE TABLE [GUSTO00005].[EdiIsEmriSiparisBaglanti] (
  [EdiIsEmriSiparisBaglanti_rowid] [int] IDENTITY,
  [pAlinanSiparisSatir] [int] NULL DEFAULT (0),
  [cSiparisSevk] [char](1) NULL DEFAULT (' '),
  [sSeri] [varchar](50) NULL DEFAULT (''),
  [pCari] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [pBaslik] [int] NULL DEFAULT (0),
  [sUreticiKodu] [varchar](50) NULL DEFAULT (''),
  [cGunlukHaftalikAylik] [char](1) NULL DEFAULT (' '),
  [ldMiktar] [decimal](22, 2) NULL DEFAULT (0),
  [dtBaslangic] [smalldatetime] NULL,
  [dtBitis] [smalldatetime] NULL,
  [ldIsEmriMiktari] [decimal](22, 2) NULL DEFAULT (0),
  [pIsEmriUrunler] [int] NULL DEFAULT (0),
  [pBagliOlduguSatir] [int] NULL DEFAULT (0),
  [sSevkAdresi] [varchar](50) NULL DEFAULT (''),
  [pSatirid] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EdiIsEmriSiparisBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO