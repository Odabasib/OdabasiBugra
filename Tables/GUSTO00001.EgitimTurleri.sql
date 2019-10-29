CREATE TABLE [GUSTO00001].[EgitimTurleri] (
  [EgitimTurleri_rowid] [int] IDENTITY,
  [nEgitimTuru] [tinyint] NULL DEFAULT (0),
  [sTurAd] [varchar](50) NULL DEFAULT (''),
  [sTurAciklama] [varchar](100) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EgitimTurleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO