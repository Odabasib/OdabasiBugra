CREATE TABLE [GUSTO00001].[xIsEmriGerceklesenOpr] (
  [IsEmriGerceklesenOpr_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL,
  [pIsEmriOperasyon] [int] NOT NULL,
  [sSeri] [varchar](20) NOT NULL,
  [nNo] [int] NOT NULL,
  [sReferansNo] [varchar](50) NULL,
  [pIsMerkeziKodu] [int] NOT NULL,
  [pVardiyaKodu] [int] NOT NULL,
  [dtIslemBaslamaTarihi] [smalldatetime] NULL,
  [dtIslemBitisTarihi] [smalldatetime] NOT NULL,
  [tmBaslamaSaati] [int] NULL,
  [tmBitisSaati] [int] NULL,
  [pHizmetKodu] [int] NULL,
  [sAciklama] [varchar](60) NULL,
  [ldMiktar] [decimal](22, 6) NULL,
  [ldUrunFireMiktari] [decimal](22, 6) NULL,
  [pIslemID] [int] NULL,
  [nLevel] [smallint] NULL,
  [pOlusturanKullanici] [int] NOT NULL,
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL,
  [pDegistirenKullanici] [int] NULL,
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL
)
ON [PRIMARY]
GO