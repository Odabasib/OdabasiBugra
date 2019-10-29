CREATE TABLE [Gusto].[FiyatEndekFaizOranTanim] (
  [FiyatEndekFaizOranTanim_rowid] [int] IDENTITY,
  [sAd] [varchar](50) NULL DEFAULT (''),
  [cTur] [char](1) NOT NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([FiyatEndekFaizOranTanim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO