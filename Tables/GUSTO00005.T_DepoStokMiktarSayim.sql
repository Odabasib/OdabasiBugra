﻿CREATE TABLE [GUSTO00005].[T_DepoStokMiktarSayim] (
  [DepoStokMiktar_rowid] [int] IDENTITY,
  [pDepoKodu] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [ldBirinciBirim] [decimal](22, 6) NULL DEFAULT (0),
  [ldIkinciBirim] [decimal](22, 6) NULL DEFAULT (0),
  [ldUcuncuBirim] [decimal](22, 6) NULL DEFAULT (0),
  [ldRezerveEdilmisMiktar1] [decimal](22, 6) NULL DEFAULT (0),
  [ldRezerveEdilmisMiktar2] [decimal](22, 6) NULL DEFAULT (0),
  [ldRezerveEdilmisMiktar3] [decimal](22, 6) NULL DEFAULT (0),
  [nEngelleUyarSerbest] [tinyint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DepoStokMiktar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO