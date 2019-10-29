CREATE TABLE [GUSTO00004].[PerformansTuru] (
  [PerformansTuru_rowid] [int] IDENTITY,
  [pTanim] [int] NOT NULL DEFAULT (0),
  [sAd] [varchar](50) NULL DEFAULT (''),
  [ldOran] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PerformansTuru_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sAd]
  ON [GUSTO00004].[PerformansTuru] ([sAd], [pTanim], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO