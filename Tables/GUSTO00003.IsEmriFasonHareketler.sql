CREATE TABLE [GUSTO00003].[IsEmriFasonHareketler] (
  [IsEmriFasonHareketler_rowid] [int] IDENTITY,
  [pIsEmri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [cCariTuru] [char](1) NULL DEFAULT ('C'),
  [pCari] [int] NULL DEFAULT (0),
  [cGirisCikis] [char](1) NOT NULL DEFAULT ('0'),
  PRIMARY KEY CLUSTERED ([IsEmriFasonHareketler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsEmri]
  ON [GUSTO00003].[IsEmriFasonHareketler] ([pIsEmri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00003].[IsEmriFasonHareketler] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO