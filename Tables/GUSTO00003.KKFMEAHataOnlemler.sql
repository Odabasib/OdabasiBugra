CREATE TABLE [GUSTO00003].[KKFMEAHataOnlemler] (
  [KKFMEAHataOnlemler_rowid] [int] IDENTITY,
  [pKKFMEAHatalar] [int] NOT NULL DEFAULT (0),
  [sOnerilenOnlem] [varchar](50) NOT NULL DEFAULT (''),
  [pGorevKodu] [int] NULL DEFAULT (0),
  [dtUygulamaBitis] [smalldatetime] NULL,
  [sAlinanOnlem] [varchar](50) NULL DEFAULT (''),
  [ldHataSiddeti] [decimal](22, 2) NULL DEFAULT (0),
  [ldHataOlasiligi] [decimal](22, 2) NULL DEFAULT (0),
  [ldKesfedilebilirlik] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKFMEAHataOnlemler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKKFMEAHatalar]
  ON [GUSTO00003].[KKFMEAHataOnlemler] ([pKKFMEAHatalar])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO