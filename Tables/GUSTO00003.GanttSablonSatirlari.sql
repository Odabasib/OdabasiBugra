CREATE TABLE [GUSTO00003].[GanttSablonSatirlari] (
  [GanttSablonSatirlari_rowid] [int] IDENTITY,
  [pHareketSatiri] [int] NULL DEFAULT (0),
  [pSablon] [int] NULL DEFAULT (0),
  [pIsEmri] [int] NULL DEFAULT (0),
  [pIsEmriOperasyon] [int] NULL DEFAULT (0),
  [pOperasyon] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [nMakinaGorev] [tinyint] NOT NULL DEFAULT (0),
  [pKaynakSinifKodu] [int] NULL DEFAULT (0),
  [pKaynakKodu] [int] NULL DEFAULT (0),
  [dtSetupBaslamaTarihi] [smalldatetime] NOT NULL,
  [dtCalismaBaslamaTarihi] [smalldatetime] NOT NULL,
  [dtSetupBitisTarihi] [smalldatetime] NOT NULL,
  [dtCalismaBitisTarihi] [smalldatetime] NOT NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GanttSablonSatirlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO