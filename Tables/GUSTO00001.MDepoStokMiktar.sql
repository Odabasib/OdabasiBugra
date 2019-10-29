CREATE TABLE [GUSTO00001].[MDepoStokMiktar] (
  [MDepoStokMiktar_rowid] [int] IDENTITY,
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [sKaynakTuru] [varchar](50) NULL DEFAULT (''),
  [pKaynak] [int] NULL DEFAULT (0),
  [dtTeslimTarihi] [smalldatetime] NULL,
  [ldBirinciBirim] [decimal](22, 6) NULL DEFAULT (0),
  [ldIkinciBirim] [decimal](22, 6) NULL DEFAULT (0),
  [ldUcuncuBirim] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MDepoStokMiktar_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [KaynakTuru]
  ON [GUSTO00001].[MDepoStokMiktar] ([sKaynakTuru], [pKaynak])
  ON [PRIMARY]
GO

CREATE INDEX [StokDepoKoduMiktar]
  ON [GUSTO00001].[MDepoStokMiktar] ([pStokKodu], [pIzlemeKodu], [pKaynak])
  ON [PRIMARY]
GO