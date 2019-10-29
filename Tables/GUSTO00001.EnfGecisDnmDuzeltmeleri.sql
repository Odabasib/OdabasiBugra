CREATE TABLE [GUSTO00001].[EnfGecisDnmDuzeltmeleri] (
  [EnfGecisDnmDuzeltmeleri_rowid] [int] IDENTITY,
  [nTur] [smallint] NOT NULL DEFAULT (0),
  [pDonem] [int] NOT NULL DEFAULT (0),
  [pBagliHesap] [int] NOT NULL DEFAULT (0),
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](60) NULL DEFAULT (''),
  [sAyrintiKod] [varchar](41) NULL DEFAULT (''),
  [sAyrintiAd] [varchar](60) NULL DEFAULT (''),
  [dtTarih] [smalldatetime] NULL,
  [ldTutar1] [decimal](22, 2) NULL DEFAULT (0),
  [ldTutar2] [decimal](22, 2) NULL DEFAULT (0),
  [ldTutar3] [decimal](22, 2) NULL DEFAULT (0),
  [ldTutar4] [decimal](22, 2) NULL DEFAULT (0),
  [ldROFM] [decimal](22, 2) NULL DEFAULT (0),
  [ldDuzKatsayisi] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EnfGecisDnmDuzeltmeleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [Tur_Donem_BagliHesap]
  ON [GUSTO00001].[EnfGecisDnmDuzeltmeleri] ([nTur], [pDonem], [pBagliHesap])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO