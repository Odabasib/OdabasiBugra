CREATE TABLE [GUSTO00001].[IsEmri] (
  [IsEmri_rowid] [int] IDENTITY,
  [dtIsEmriTarihi] [smalldatetime] NOT NULL,
  [sIsEmriSeri] [varchar](20) NOT NULL DEFAULT (''),
  [nIsEmriNo] [int] NOT NULL DEFAULT (0),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [nIsemriTuru] [tinyint] NOT NULL DEFAULT (0),
  [pUrunAgaciKodu] [int] NULL DEFAULT (0),
  [pRotaBaslik] [int] NULL DEFAULT (0),
  [ldPlanlananIsEmriMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [dtPlanlananBaslamaTarihi] [smalldatetime] NULL,
  [dtPlanlananBitisTarihi] [smalldatetime] NULL,
  [tmPlanlananBaslamaZamani] [int] NULL DEFAULT (0),
  [tmPlanlananBitisZamani] [int] NULL DEFAULT (0),
  [nIsemriDurum] [tinyint] NULL DEFAULT (0),
  [pPlanlayanPersonel] [int] NULL DEFAULT (0),
  [cOnayDurumu] [char](1) NULL DEFAULT ('G'),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [pOncelik] [int] NULL DEFAULT (0),
  [nCizelgelemeKriteri] [tinyint] NOT NULL DEFAULT (0),
  [dtEnGecTamamlanmaTarihi] [smalldatetime] NULL,
  [nLevel] [smallint] NULL DEFAULT (1),
  [pMRPBaslik] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmri_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [nLevel]
  ON [GUSTO00001].[IsEmri] ([nLevel])
  ON [PRIMARY]
GO

CREATE INDEX [pMRPBaslik]
  ON [GUSTO00001].[IsEmri] ([pMRPBaslik])
  ON [PRIMARY]
GO

CREATE INDEX [pUrunAgaciKodu]
  ON [GUSTO00001].[IsEmri] ([pUrunAgaciKodu])
  ON [PRIMARY]
GO

CREATE INDEX [SeriKey]
  ON [GUSTO00001].[IsEmri] ([nIsEmriNo])
  ON [PRIMARY]
GO

CREATE INDEX [TarihSeriKey]
  ON [GUSTO00001].[IsEmri] ([dtIsEmriTarihi])
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
CREATE TRIGGER [ADTRDIsEmri] ON [GUSTO00001].[IsEmri] FOR DELETE AS DECLARE @pGustoUser int;SET @pGustoUser = isnull((SELECT top 1 pKullanici FROM Gusto.Kilit Where sBilgisayarAdi=HOST_NAME() and pFirma=1),0); INSERT INTO Gusto00001.ADTIsEmri(sTableName,pTableRowId,cIslem,sDbUser,pGustoUser,sHostName,dtOlusturma,tmOlusturma) select 'IsEmri',IsEmri_rowid,'D',USER_NAME(),@pGustoUser,HOST_NAME(),GetDate(), DATEPART(hh,GETDATE())*10000 + DATEPART(mi,GETDATE())*100 + DATEPART(ss,GETDATE()) FROM DELETED;
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
CREATE TRIGGER [ADTRUIsEmri] ON [GUSTO00001].[IsEmri] FOR UPDATE AS DECLARE @pGustoUser int;SET @pGustoUser = isnull((SELECT top 1 pKullanici FROM Gusto.Kilit Where sBilgisayarAdi=HOST_NAME() and pFirma=1),0); INSERT INTO Gusto00001.ADTIsEmri(sTableName,pTableRowId,cIslem,sDbUser,pGustoUser,sHostName,dtOlusturma,tmOlusturma) select 'IsEmri',IsEmri_rowid,'U',USER_NAME(),@pGustoUser,HOST_NAME(),GetDate(), DATEPART(hh,GETDATE())*10000 + DATEPART(mi,GETDATE())*100 + DATEPART(ss,GETDATE()) FROM INSERTED;
GO