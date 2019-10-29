CREATE TABLE [GUSTO00001].[IslemTablosu] (
  [IslemTablosu_rowid] [int] IDENTITY,
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [pMuhIslemNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [bKontrol] [bit] NULL DEFAULT (0),
  [bGoruldu] [bit] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [sSanalFisSeri] [varchar](20) NULL DEFAULT (''),
  [nSanalFisNo] [int] NULL DEFAULT (0),
  [dSubeKodu] [bigint] NULL DEFAULT (0),
  [sBelgeSeri] [varchar](60) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IslemTablosu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MuhIslemNo]
  ON [GUSTO00001].[IslemTablosu] ([pMuhIslemNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SanalFisNo]
  ON [GUSTO00001].[IslemTablosu] ([nSanalFisNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Tarih]
  ON [GUSTO00001].[IslemTablosu] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO