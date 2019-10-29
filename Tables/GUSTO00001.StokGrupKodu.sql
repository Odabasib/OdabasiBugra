CREATE TABLE [GUSTO00001].[StokGrupKodu] (
  [StokGrupKodu_rowid] [int] IDENTITY,
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](60) NULL DEFAULT (''),
  [sKisaAdi] [varchar](30) NULL DEFAULT (''),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokGrupKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00001].[StokGrupKodu] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00001].[StokGrupKodu] ([sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAdKeyGrup]
  ON [GUSTO00001].[StokGrupKodu] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKodKeyGrup]
  ON [GUSTO00001].[StokGrupKodu] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO