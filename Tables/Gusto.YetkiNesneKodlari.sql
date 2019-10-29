CREATE TABLE [Gusto].[YetkiNesneKodlari] (
  [YetkiNesneKodlari_rowid] [int] IDENTITY,
  [YetkiNesnesiKodu] [varchar](30) NULL DEFAULT (''),
  [YetkiNesnesiAciklama] [varchar](60) NULL DEFAULT (''),
  [nYetkiMaskesi] [tinyint] NOT NULL DEFAULT (0),
  [pUstKod] [int] NOT NULL DEFAULT (0),
  [nAltKodSayisi] [tinyint] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YetkiNesneKodlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [Yetki_UstKodKey]
  ON [Gusto].[YetkiNesneKodlari] ([pUstKod], [YetkiNesnesiKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [YetkiNesnesiKodu]
  ON [Gusto].[YetkiNesneKodlari] ([YetkiNesnesiKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO