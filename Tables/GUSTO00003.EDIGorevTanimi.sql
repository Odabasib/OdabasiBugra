CREATE TABLE [GUSTO00003].[EDIGorevTanimi] (
  [EDIGorevTanimi_rowid] [int] IDENTITY,
  [sGorevAdi] [varchar](50) NULL DEFAULT (''),
  [pSablon] [int] NULL DEFAULT (0),
  [cGorevTuru] [char](1) NULL DEFAULT (' '),
  [cKaynakHedefTuru] [char](1) NULL DEFAULT (' '),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EDIGorevTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pSablon]
  ON [GUSTO00003].[EDIGorevTanimi] ([pSablon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO