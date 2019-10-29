CREATE TABLE [GUSTO00005].[HataTablosu] (
  [HataTablosu_rowid] [int] IDENTITY,
  [pHataKaynakTabloID] [int] NULL DEFAULT (0),
  [pHataMuhIslemNo] [int] NULL DEFAULT (0),
  [nHareketTuru] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [dtOlusturma] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HataTablosu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pHataKaynakTabloID]
  ON [GUSTO00005].[HataTablosu] ([pHataKaynakTabloID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO