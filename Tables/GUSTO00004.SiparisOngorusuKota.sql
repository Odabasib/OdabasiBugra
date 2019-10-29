CREATE TABLE [GUSTO00004].[SiparisOngorusuKota] (
  [SiparisOngorusuKota_rowid] [int] IDENTITY,
  [pOngoruStok] [int] NULL DEFAULT (0),
  [nSubDonemId] [int] NULL DEFAULT (0),
  [dtBasTarih] [smalldatetime] NULL,
  [dtBitTarih] [smalldatetime] NULL,
  [ldMiktar1] [decimal](22, 2) NULL DEFAULT (0),
  [ldMiktar2] [decimal](22, 2) NULL DEFAULT (0),
  [ldMiktar3] [decimal](22, 2) NULL DEFAULT (0),
  [ldBrutFiyat] [decimal](22, 2) NULL DEFAULT (0),
  [ldNetFiyat] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SiparisOngorusuKota_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OngoruKota]
  ON [GUSTO00004].[SiparisOngorusuKota] ([pOngoruStok], [nSubDonemId])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO