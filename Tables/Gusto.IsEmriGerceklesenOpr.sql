CREATE TABLE [Gusto].[IsEmriGerceklesenOpr] (
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