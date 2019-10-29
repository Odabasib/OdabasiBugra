CREATE TABLE [GUSTO00004].[SCKasaMuhasebeKodu] (
  [SCKasaMuhasebeKodu_rowid] [int] IDENTITY,
  [pKasaKodu] [int] NULL DEFAULT (0),
  [pKasaMuhasebeKodu] [int] NULL DEFAULT (0),
  [nKasaMuhasebeKoduTanimi] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SCKasaMuhasebeKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MuhKodTanimKey]
  ON [GUSTO00004].[SCKasaMuhasebeKodu] ([pKasaKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO