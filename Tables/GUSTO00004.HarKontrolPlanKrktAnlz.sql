CREATE TABLE [GUSTO00004].[HarKontrolPlanKrktAnlz] (
  [HarKontrolPlanKrktAnlz_rowid] [int] IDENTITY,
  [lNo] [int] NOT NULL DEFAULT (0),
  [pHarKontrolPlanKrkt] [int] NOT NULL DEFAULT (0),
  [cHataYeri] [smallint] NULL DEFAULT (0),
  [cHataTipi] [smallint] NULL DEFAULT (0),
  [pHarKontrolPlanOlcumSonuc] [int] NULL DEFAULT (0),
  [sHataAciklama] [varchar](50) NULL DEFAULT (''),
  [dtOlusturma] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HarKontrolPlanKrktAnlz_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [cHataTipi]
  ON [GUSTO00004].[HarKontrolPlanKrktAnlz] ([cHataTipi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [lNo]
  ON [GUSTO00004].[HarKontrolPlanKrktAnlz] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pHarKontrolPlanKrkt]
  ON [GUSTO00004].[HarKontrolPlanKrktAnlz] ([pHarKontrolPlanKrkt])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pHarKontrolPlanOlcumSonuc]
  ON [GUSTO00004].[HarKontrolPlanKrktAnlz] ([pHarKontrolPlanOlcumSonuc])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO