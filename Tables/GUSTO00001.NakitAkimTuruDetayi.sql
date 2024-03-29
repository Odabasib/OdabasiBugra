﻿CREATE TABLE [GUSTO00001].[NakitAkimTuruDetayi] (
  [NakitAkimTuruDetayi_rowid] [int] IDENTITY,
  [pNakitAkimTuruKodu] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [ldAylikTutar1] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikTutar2] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikTutar3] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikTutar4] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikTutar5] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikTutar6] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikTutar7] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikTutar8] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikTutar9] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikTutar10] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikTutar11] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikTutar12] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikDovizTutar1] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikDovizTutar2] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikDovizTutar3] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikDovizTutar4] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikDovizTutar5] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikDovizTutar6] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikDovizTutar7] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikDovizTutar8] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikDovizTutar9] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikDovizTutar10] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikDovizTutar11] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikDovizTutar12] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikSistemDovizTutar1] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikSistemDovizTutar2] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikSistemDovizTutar3] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikSistemDovizTutar4] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikSistemDovizTutar5] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikSistemDovizTutar6] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikSistemDovizTutar7] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikSistemDovizTutar8] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikSistemDovizTutar9] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikSistemDovizTutar10] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikSistemDovizTutar11] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikSistemDovizTutar12] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([NakitAkimTuruDetayi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO