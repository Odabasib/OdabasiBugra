CREATE TABLE [GUSTO00005].[ReeskontDonemi] (
  [ReeskontDonemi_rowid] [int] IDENTITY,
  [sDonemAdi] [varchar](50) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [dtBitisTarihi] [smalldatetime] NULL,
  [cTur] [char](1) NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ReeskontDonemi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO