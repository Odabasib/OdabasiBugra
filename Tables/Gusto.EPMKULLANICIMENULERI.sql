﻿CREATE TABLE [Gusto].[EPMKULLANICIMENULERI] (
  [EPMKULLANICIMENULERI_ROWID] [int] IDENTITY,
  [PKULLANICI] [int] NULL DEFAULT (0),
  [PSABLONWINDOWS] [int] NULL DEFAULT (0),
  [PSABLONWEB] [int] NULL DEFAULT (0),
  [PSABLONOUTLOOK] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMKULLANICIMENULERI_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IND_EPMKULLANICIMENULERI]
  ON [Gusto].[EPMKULLANICIMENULERI] ([PKULLANICI])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO