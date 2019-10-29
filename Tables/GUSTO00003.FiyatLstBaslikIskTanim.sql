CREATE TABLE [GUSTO00003].[FiyatLstBaslikIskTanim] (
  [FiyatLstBaslikIskTanim_rowid] [int] IDENTITY,
  [pFiyatListesi] [int] NOT NULL DEFAULT (0),
  [pIskontoTanim] [int] NOT NULL DEFAULT (0),
  [bTumCariler] [bit] NULL DEFAULT (0),
  [pCari] [int] NULL DEFAULT (0),
  [bTumStoklar] [bit] NULL DEFAULT (0),
  [cStokHizmetSet] [char](1) NOT NULL DEFAULT ('S'),
  [pStokKodu] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FiyatLstBaslikIskTanim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pFiyatListesi]
  ON [GUSTO00003].[FiyatLstBaslikIskTanim] ([pFiyatListesi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIskontoTanim]
  ON [GUSTO00003].[FiyatLstBaslikIskTanim] ([pIskontoTanim])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO