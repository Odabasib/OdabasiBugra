﻿CREATE TABLE [GUSTO00003].[EB_Beyannameler] (
  [EB_Beyannameler_rowid] [int] IDENTITY,
  [nBeyannameTipi] [int] NULL DEFAULT (0),
  [sDonemTipi] [varchar](64) NULL DEFAULT (''),
  [nAy] [int] NULL DEFAULT (0),
  [nYil] [int] NULL DEFAULT (0),
  [sVergiDairesi] [varchar](256) NULL DEFAULT (''),
  [sVergiNumarasi] [varchar](16) NULL DEFAULT (''),
  [sBilgi] [varchar](512) NULL DEFAULT (''),
  [XML] [image] NULL DEFAULT (''),
  [sXMLdeOlmayan1] [varchar](512) NULL DEFAULT (''),
  [sXMLdeOlmayan2] [varchar](512) NULL DEFAULT (''),
  [sXMLdeOlmayan3] [varchar](512) NULL DEFAULT (''),
  [sXMLdeOlmayan4] [varchar](512) NULL DEFAULT (''),
  [sXMLdeOlmayan5] [varchar](512) NULL DEFAULT (''),
  [sXMLdeOlmayan6] [varchar](512) NULL DEFAULT (''),
  [sXMLdeOlmayan7] [varchar](512) NULL DEFAULT (''),
  [sXMLdeOlmayan8] [varchar](512) NULL DEFAULT (''),
  [sXMLdeOlmayan9] [varchar](512) NULL DEFAULT (''),
  [sXMLdeOlmayan10] [varchar](512) NULL DEFAULT (''),
  [dtSonTeslimTarihiBas] [smalldatetime] NULL,
  [dtSonTeslimTarihiBit] [smalldatetime] NULL,
  [dtSonOdemeTarihiBas] [smalldatetime] NULL,
  [dtSonOdemeTarihiBit] [smalldatetime] NULL,
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [cGonderilmeDurumu] [char](1) NULL DEFAULT (' '),
  [pGonderenKullanici] [int] NULL DEFAULT (0),
  [dtGonderen] [smalldatetime] NULL,
  [tmGonderen] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EB_Beyannameler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO