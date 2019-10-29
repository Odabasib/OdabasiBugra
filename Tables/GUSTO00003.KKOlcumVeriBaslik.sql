CREATE TABLE [GUSTO00003].[KKOlcumVeriBaslik] (
  [KKOlcumVeriBaslik_rowid] [int] IDENTITY,
  [pHarKontrolPlanKrkt] [int] NOT NULL DEFAULT (0),
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [nParcaSayisi] [smallint] NULL DEFAULT (0),
  [nDenemeSayisi] [smallint] NULL DEFAULT (0),
  [ldOlcumOrtalama] [decimal](22, 2) NULL DEFAULT (0),
  [ldOlcumStdSapma] [decimal](22, 2) NULL DEFAULT (0),
  [cOlcumSonuc] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKOlcumVeriBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pHarKontrolPlanKrkt]
  ON [GUSTO00003].[KKOlcumVeriBaslik] ([pHarKontrolPlanKrkt])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO