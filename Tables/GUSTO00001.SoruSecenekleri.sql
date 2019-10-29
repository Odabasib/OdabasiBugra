CREATE TABLE [GUSTO00001].[SoruSecenekleri] (
  [SoruSecenekleri_rowid] [int] IDENTITY,
  [pSoru] [int] NULL DEFAULT (0),
  [nSiraNo] [tinyint] NULL DEFAULT (0),
  [cSecenek] [char](1) NOT NULL DEFAULT (' '),
  [sSecenekAciklama] [varchar](250) NULL DEFAULT (''),
  [nPuan] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SoruSecenekleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SoruIdSiraKey]
  ON [GUSTO00001].[SoruSecenekleri] ([pSoru], [nSiraNo], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO