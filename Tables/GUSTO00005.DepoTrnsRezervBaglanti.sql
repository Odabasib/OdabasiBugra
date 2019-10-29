﻿CREATE TABLE [GUSTO00005].[DepoTrnsRezervBaglanti] (
  [DepoTrnsRezervBaglanti_rowid] [int] IDENTITY,
  [pDepoTransfer] [int] NULL DEFAULT (0),
  [pGirisRezervasyon] [int] NULL DEFAULT (0),
  [pCikisRezervasyon] [int] NULL DEFAULT (0),
  [ldAktarimMiktar1] [decimal](22, 6) NULL DEFAULT (0),
  [ldAktarimMiktar2] [decimal](22, 6) NULL DEFAULT (0),
  [ldAktarimMiktar3] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DepoTrnsRezervBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CikisRezervasyonKey]
  ON [GUSTO00005].[DepoTrnsRezervBaglanti] ([pDepoTransfer], [pCikisRezervasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [GirisRezervasyonKey]
  ON [GUSTO00005].[DepoTrnsRezervBaglanti] ([pDepoTransfer], [pGirisRezervasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO