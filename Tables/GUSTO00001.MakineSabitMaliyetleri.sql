CREATE TABLE [GUSTO00001].[MakineSabitMaliyetleri] (
  [MakineSabitMaliyetleri_rowid] [int] IDENTITY,
  [cTur] [char](1) NULL DEFAULT (' '),
  [pOperasyonMakina] [int] NULL DEFAULT (0),
  [pKod] [int] NULL DEFAULT (0),
  [pDirekGiderKodu] [int] NOT NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [pDoviz] [int] NULL DEFAULT (0),
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
  PRIMARY KEY CLUSTERED ([MakineSabitMaliyetleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [cTur]
  ON [GUSTO00001].[MakineSabitMaliyetleri] ([pKod], [pOperasyonMakina])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pDirekGiderKodu]
  ON [GUSTO00001].[MakineSabitMaliyetleri] ([pDirekGiderKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO