﻿CREATE TABLE [GUSTO00003].[GelenGidenEvrak] (
  [GelenGidenEvrak_rowid] [int] IDENTITY,
  [sSeri] [varchar](255) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [nCariTuru] [smallint] NULL DEFAULT (0),
  [pCariKodu] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [nGelenGiden] [smallint] NULL DEFAULT (0),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [dtIslemTarihi] [smalldatetime] NULL,
  [dtEvrakTarihi] [smalldatetime] NULL,
  [ldFaxAlanKodu] [decimal](22, 2) NULL DEFAULT (0),
  [ldFaxNumarasi] [decimal](22, 2) NULL DEFAULT (0),
  [sSehir] [varchar](50) NULL DEFAULT (''),
  [sAdres] [varchar](50) NULL DEFAULT (''),
  [pBelgeTuru] [int] NULL DEFAULT (0),
  [pZimmetTuru] [int] NULL DEFAULT (0),
  [ldDosyaNo] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkSayisi] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [sDosyaDizini] [varchar](199) NULL DEFAULT (''),
  [sDosyaAdi] [varchar](50) NULL DEFAULT (''),
  [nDurum] [smallint] NULL DEFAULT (0),
  [dtOlusturmaTarihi] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GelenGidenEvrak_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO