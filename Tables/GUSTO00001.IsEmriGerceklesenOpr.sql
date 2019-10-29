CREATE TABLE [GUSTO00001].[IsEmriGerceklesenOpr] (
  [IsEmriGerceklesenOpr_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsEmriOperasyon] [int] NOT NULL DEFAULT (0),
  [sSeri] [varchar](20) NOT NULL DEFAULT (''),
  [nNo] [int] NOT NULL DEFAULT (0),
  [sReferansNo] [varchar](50) NULL DEFAULT (''),
  [pIsMerkeziKodu] [int] NOT NULL DEFAULT (0),
  [pVardiyaKodu] [int] NOT NULL DEFAULT (0),
  [dtIslemBaslamaTarihi] [smalldatetime] NULL,
  [dtIslemBitisTarihi] [smalldatetime] NOT NULL,
  [tmBaslamaSaati] [int] NULL DEFAULT (0),
  [tmBitisSaati] [int] NULL DEFAULT (0),
  [pHizmetKodu] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldUrunFireMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  [nLevel] [smallint] NULL DEFAULT (1),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmriGerceklesenOpr_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [dtIslemBitisTarihi]
  ON [GUSTO00001].[IsEmriGerceklesenOpr] ([dtIslemBitisTarihi])
  ON [PRIMARY]
GO

CREATE INDEX [OperasyonSeri]
  ON [GUSTO00001].[IsEmriGerceklesenOpr] ([pIsEmriOperasyon])
  ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00001].[IsEmriGerceklesenOpr] ([pIsemri])
  ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00001].[IsEmriGerceklesenOpr] ([pIslemID])
  ON [PRIMARY]
GO

CREATE INDEX [SeriNo]
  ON [GUSTO00001].[IsEmriGerceklesenOpr] ([nNo])
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
CREATE TRIGGER [ADTRDIsEmriGerceklesenOpr] ON [GUSTO00001].[IsEmriGerceklesenOpr] FOR DELETE AS DECLARE @pGustoUser int;SET @pGustoUser = isnull((SELECT top 1 pKullanici FROM Gusto.Kilit Where sBilgisayarAdi=HOST_NAME() and pFirma=1),0); INSERT INTO Gusto00001.ADTIsEmriGerceklesenOpr(sTableName,pTableRowId,cIslem,sDbUser,pGustoUser,sHostName,dtOlusturma,tmOlusturma) select 'IsEmriGerceklesenOpr',IsEmriGerceklesenOpr_rowid,'D',USER_NAME(),@pGustoUser,HOST_NAME(),GetDate(), DATEPART(hh,GETDATE())*10000 + DATEPART(mi,GETDATE())*100 + DATEPART(ss,GETDATE()) FROM DELETED;
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
CREATE TRIGGER [ADTRUIsEmriGerceklesenOpr] ON [GUSTO00001].[IsEmriGerceklesenOpr] FOR UPDATE AS DECLARE @pGustoUser int;SET @pGustoUser = isnull((SELECT top 1 pKullanici FROM Gusto.Kilit Where sBilgisayarAdi=HOST_NAME() and pFirma=1),0); INSERT INTO Gusto00001.ADTIsEmriGerceklesenOpr(sTableName,pTableRowId,cIslem,sDbUser,pGustoUser,sHostName,dtOlusturma,tmOlusturma) select 'IsEmriGerceklesenOpr',IsEmriGerceklesenOpr_rowid,'U',USER_NAME(),@pGustoUser,HOST_NAME(),GetDate(), DATEPART(hh,GETDATE())*10000 + DATEPART(mi,GETDATE())*100 + DATEPART(ss,GETDATE()) FROM INSERTED;
GO