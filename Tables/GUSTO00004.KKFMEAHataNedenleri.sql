CREATE TABLE [GUSTO00004].[KKFMEAHataNedenleri] (
  [KKFMEAHataNedenleri_rowid] [int] IDENTITY,
  [pKKFMEAHatalar] [int] NOT NULL DEFAULT (0),
  [sHataNedeni] [varchar](50) NOT NULL DEFAULT (''),
  [ldHataOlasiligi] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKFMEAHataNedenleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKKFMEAHatalar]
  ON [GUSTO00004].[KKFMEAHataNedenleri] ([pKKFMEAHatalar])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO