CREATE TABLE [GUSTO00001].[DirekGiderDegerleri] (
  [DirekGiderDegerleri_rowid] [int] IDENTITY,
  [pDirekGiderKodu] [int] NOT NULL DEFAULT (0),
  [ldBirimFiyat] [decimal](22, 9) NOT NULL DEFAULT (0),
  [dtBaslangic] [smalldatetime] NOT NULL,
  [dtBitis] [smalldatetime] NULL,
  [sAciklama] [varchar](2048) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DirekGiderDegerleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pDirekGiderKodu]
  ON [GUSTO00001].[DirekGiderDegerleri] ([pDirekGiderKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO