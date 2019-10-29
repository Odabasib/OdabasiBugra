CREATE TABLE [GUSTO00005].[HareketSatirFAMasraf] (
  [HareketSatirFAMasraf_rowid] [int] IDENTITY,
  [pStokHareket] [int] NOT NULL DEFAULT (0),
  [pFAMasraf] [int] NOT NULL DEFAULT (0),
  [cBelgeTuru] [char](1) NULL DEFAULT ('F'),
  [ldFAMasrafTutari] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldhrkdFAMasrafTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdFAMasrafTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdFAMasrafTutari] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HareketSatirFAMasraf_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pFAMasraf]
  ON [GUSTO00005].[HareketSatirFAMasraf] ([pFAMasraf])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pStokHareket]
  ON [GUSTO00005].[HareketSatirFAMasraf] ([pStokHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO