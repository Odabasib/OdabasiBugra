﻿CREATE TABLE [Gusto].[OY_KullaniciGrubu] (
  [OY_KULLANICIGRUBU_ROWID] [int] IDENTITY,
  [PKULLANICI] [int] NULL DEFAULT (0),
  [PGRUP] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OY_KULLANICIGRUBU_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO