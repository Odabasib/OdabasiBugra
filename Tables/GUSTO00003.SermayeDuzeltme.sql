CREATE TABLE [GUSTO00003].[SermayeDuzeltme] (
  [SermayeDuzeltme_rowid] [int] IDENTITY,
  [nIslemTipi] [smallint] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [dtFisTarihi] [smalldatetime] NULL,
  [sGenelAciklama] [varchar](50) NULL DEFAULT (''),
  [sBaslikAciklama] [varchar](50) NULL DEFAULT (''),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldDuzeltilmisTutar] [decimal](22, 2) NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SermayeDuzeltme_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO