CREATE TABLE [GUSTO00005].[ReelOlmayanFinsMaliyet] (
  [ReelOlmayanFinsMaliyet_rowid] [int] IDENTITY,
  [nFisDetayElleGiris] [smallint] NULL DEFAULT (0),
  [nHareketTipi] [smallint] NULL DEFAULT (0),
  [pDonem] [int] NULL DEFAULT (0),
  [pHareketId] [int] NULL DEFAULT (0),
  [nYontem] [smallint] NULL DEFAULT (0),
  [dtBorcKullanDonem] [smalldatetime] NULL,
  [dtBorcKapatDonem] [smalldatetime] NULL,
  [ldTefeOran] [decimal](22, 2) NULL DEFAULT (0),
  [ldOtKfo] [decimal](22, 2) NULL DEFAULT (0),
  [ldOran] [decimal](22, 5) NULL DEFAULT (0),
  [ldKredi] [decimal](22, 2) NULL DEFAULT (0),
  [ldFinnsMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [ldRofm] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [dtOlusturma] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ReelOlmayanFinsMaliyet_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pHareketId]
  ON [GUSTO00005].[ReelOlmayanFinsMaliyet] ([pHareketId])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO