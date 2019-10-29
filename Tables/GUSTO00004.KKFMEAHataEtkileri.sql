CREATE TABLE [GUSTO00004].[KKFMEAHataEtkileri] (
  [KKFMEAHataEtkileri_rowid] [int] IDENTITY,
  [pKKFMEAHatalar] [int] NOT NULL DEFAULT (0),
  [sHataninEtkisi] [varchar](50) NOT NULL DEFAULT (''),
  [ldHataSiddeti] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKFMEAHataEtkileri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKKFMEAHatalar]
  ON [GUSTO00004].[KKFMEAHataEtkileri] ([pKKFMEAHatalar])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO