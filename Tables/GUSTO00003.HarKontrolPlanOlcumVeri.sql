CREATE TABLE [GUSTO00003].[HarKontrolPlanOlcumVeri] (
  [HarKontrolPlanOlcumVeri_rowid] [int] IDENTITY,
  [pOlcumSonuc] [int] NULL DEFAULT (0),
  [lNo] [int] NOT NULL DEFAULT (0),
  [ldDeger] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HarKontrolPlanOlcumVeri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pOlcumSonuc]
  ON [GUSTO00003].[HarKontrolPlanOlcumVeri] ([pOlcumSonuc])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO