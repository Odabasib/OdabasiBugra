CREATE TABLE [GUSTO00004].[StdMlytEndGiderHesaplari] (
  [StdMlytEndGiderHesaplari_rowid] [int] IDENTITY,
  [pTanim] [int] NULL DEFAULT (0),
  [nHesapTuru] [smallint] NULL DEFAULT (0),
  [pGGMuhasebeBas] [int] NULL DEFAULT (0),
  [pGGMuhasebeBit] [int] NULL DEFAULT (0),
  [pGGTuruBas] [int] NULL DEFAULT (0),
  [pGGTuruBit] [int] NULL DEFAULT (0),
  [pYansitmaHesabi] [int] NULL DEFAULT (0),
  [pYansitmaTurHeabi] [int] NULL DEFAULT (0),
  [ldOran] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StdMlytEndGiderHesaplari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO