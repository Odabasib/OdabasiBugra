CREATE TABLE [GUSTO00001].[FiyatKriteriEkBilgiler] (
  [FiyatKriteriEkBilgiler_rowid] [int] IDENTITY,
  [cTur] [char](1) NOT NULL DEFAULT (' '),
  [cAltTur] [char](1) NULL DEFAULT (' '),
  [pTanim] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FiyatKriteriEkBilgiler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO