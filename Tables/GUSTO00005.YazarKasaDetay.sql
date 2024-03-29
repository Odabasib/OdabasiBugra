﻿CREATE TABLE [GUSTO00005].[YazarKasaDetay] (
  [YazarKasaDetay_rowid] [int] IDENTITY,
  [pYazarKasa] [int] NULL DEFAULT (0),
  [nPort] [int] NULL DEFAULT (0),
  [pDepo] [int] NULL DEFAULT (0),
  [pCari] [int] NULL DEFAULT (0),
  [cCariTur] [char](1) NULL DEFAULT (' '),
  [pKasaNakit] [int] NULL DEFAULT (0),
  [pKasaCek] [int] NULL DEFAULT (0),
  [pKasaKredi1] [int] NULL DEFAULT (0),
  [pKasaKredi2] [int] NULL DEFAULT (0),
  [pDigerHesapKisimHar] [int] NULL DEFAULT (0),
  [pDigerHesapKisimKDV] [int] NULL DEFAULT (0),
  [pStokArtirim] [int] NULL DEFAULT (0),
  [pKasaDoviz] [int] NULL DEFAULT (0),
  [nSwitch] [tinyint] NULL DEFAULT (0),
  [sFaturaSeri] [varchar](10) NULL DEFAULT (''),
  [sIrsaliyeSeri] [varchar](10) NULL DEFAULT (''),
  [sNakitTahSeri] [varchar](10) NULL DEFAULT (''),
  [sDovTahSeri] [varchar](10) NULL DEFAULT (''),
  [sKredi1TahSeri] [varchar](10) NULL DEFAULT (''),
  [sKredi2TahSeri] [varchar](10) NULL DEFAULT (''),
  [sCekTahSeri] [varchar](10) NULL DEFAULT (''),
  [sCariBorcDekSeri] [varchar](10) NULL DEFAULT (''),
  [sCariBorcDekKDVSeri] [varchar](10) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YazarKasaDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO