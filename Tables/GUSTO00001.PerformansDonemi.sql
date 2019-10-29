CREATE TABLE [GUSTO00001].[PerformansDonemi] (
  [PerformansDonemi_rowid] [int] IDENTITY,
  [sDonemAdi] [varchar](50) NULL DEFAULT (''),
  [dtBaslamaTarihi] [smalldatetime] NULL,
  [dtBitisTarihi] [smalldatetime] NULL,
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [cTur] [char](1) NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PerformansDonemi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO