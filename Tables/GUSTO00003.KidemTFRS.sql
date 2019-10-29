﻿CREATE TABLE [GUSTO00003].[KidemTFRS] (
  [KidemTFRS_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [nYil] [int] NOT NULL DEFAULT (0),
  [dtHesaplamaTarihi] [smalldatetime] NOT NULL,
  [dtIseGirisTarihi] [smalldatetime] NOT NULL,
  [dtSGKGirisTarihi] [smalldatetime] NOT NULL,
  [dtHizmetBitisTarihi] [smalldatetime] NOT NULL,
  [ldKalanHizmetSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [ldEnflasyonOrani] [decimal](22, 2) NULL DEFAULT (0),
  [ldFaizOrani] [decimal](22, 2) NULL DEFAULT (0),
  [ldKidemOdememeOlasiligi] [decimal](22, 2) NULL DEFAULT (0),
  [ldZamSayisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldHizmetSonuUcret] [decimal](22, 2) NULL DEFAULT (0),
  [ldIndirgenmisUcret] [decimal](22, 2) NULL DEFAULT (0),
  [ldKidemi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIndirgenmisTazminat] [decimal](22, 2) NULL DEFAULT (0),
  [ldOdemeIhtimaliDegeri] [decimal](22, 2) NULL DEFAULT (0),
  [ldNetTazminat] [decimal](22, 2) NULL DEFAULT (0),
  [pIslemID] [int] NOT NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [ldBrutUcret] [decimal](22, 2) NULL DEFAULT (0),
  [pIsyeri] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KidemTFRS_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO