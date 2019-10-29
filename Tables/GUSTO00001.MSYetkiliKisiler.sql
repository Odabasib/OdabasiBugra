CREATE TABLE [GUSTO00001].[MSYetkiliKisiler] (
  [MSYetkiliKisiler_rowid] [int] IDENTITY,
  [pMusteriSaticiKodu] [int] NULL DEFAULT (0),
  [sMSYetkiliAdi] [varchar](60) NULL DEFAULT (''),
  [sMSYetkiliGorevi] [varchar](30) NULL DEFAULT (''),
  [sMSYetkiliAcik] [varchar](60) NULL DEFAULT (''),
  [sEMail] [varchar](40) NULL DEFAULT (''),
  [sYetkiliTelefon] [varchar](20) NULL DEFAULT (''),
  [sSifre] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([MSYetkiliKisiler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pMusteriSaticiKodu]
  ON [GUSTO00001].[MSYetkiliKisiler] ([pMusteriSaticiKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO