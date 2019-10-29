CREATE TABLE [GUSTO00001].[HarKontrolPlanOlcumSonuc] (
  [HarKontrolPlanOlcumSonuc_rowid] [int] IDENTITY,
  [pHarKontrolPlanKrkt] [int] NOT NULL DEFAULT (0),
  [sSeri] [varchar](50) NOT NULL DEFAULT (''),
  [lNo] [int] NOT NULL DEFAULT (0),
  [cOrneklemeNo] [smallint] NULL DEFAULT (0),
  [sOrnekKumeAdi] [varchar](50) NULL DEFAULT (''),
  [bOzelDurum] [bit] NULL DEFAULT (0),
  [sOzelDurumAciklama] [varchar](50) NULL DEFAULT (''),
  [dtTarih] [smalldatetime] NULL,
  [dtBaslangic] [smalldatetime] NOT NULL,
  [dtBitis] [smalldatetime] NOT NULL,
  [pVardiya] [int] NOT NULL DEFAULT (0),
  [ldOlcumKumeBoyutu] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldOlcumOrtalama] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldOlcumStdSapma] [decimal](22, 2) NOT NULL DEFAULT (0),
  [cOlcumSonuc] [smallint] NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HarKontrolPlanOlcumSonuc_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [cOlcumSonuc]
  ON [GUSTO00001].[HarKontrolPlanOlcumSonuc] ([cOlcumSonuc])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [cOrneklemeNo]
  ON [GUSTO00001].[HarKontrolPlanOlcumSonuc] ([cOrneklemeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [lNo]
  ON [GUSTO00001].[HarKontrolPlanOlcumSonuc] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pHarKontrolPlanKrkt]
  ON [GUSTO00001].[HarKontrolPlanOlcumSonuc] ([pHarKontrolPlanKrkt])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pVardiya]
  ON [GUSTO00001].[HarKontrolPlanOlcumSonuc] ([pVardiya])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sSeri]
  ON [GUSTO00001].[HarKontrolPlanOlcumSonuc] ([sSeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO