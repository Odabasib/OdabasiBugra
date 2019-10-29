CREATE TABLE [GUSTO00001].[HesapAdiTanimi] (
  [HesapAdiTanimi_rowid] [int] IDENTITY,
  [nModul] [smallint] NULL DEFAULT (0),
  [sTanim] [varchar](30) NULL DEFAULT (''),
  [nSira] [tinyint] NULL DEFAULT (0),
  [cGirisZorunluMu] [char](1) NULL DEFAULT (' '),
  [bOtomatikArttir] [bit] NULL DEFAULT (0),
  [nOtomatikKodOnEkSeviyesi] [tinyint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HesapAdiTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ModulTanimKey]
  ON [GUSTO00001].[HesapAdiTanimi] ([nModul])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO