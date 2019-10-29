CREATE TABLE [GUSTO00003].[TezgahDurusTanimi] (
  [TezgahDurusTanimi_rowid] [int] IDENTITY,
  [sTanim] [varchar](60) NULL DEFAULT (''),
  [bAktifPasif] [bit] NULL DEFAULT (0),
  [nRed] [smallint] NULL DEFAULT (0),
  [nGreen] [smallint] NULL DEFAULT (0),
  [nBlue] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([TezgahDurusTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO