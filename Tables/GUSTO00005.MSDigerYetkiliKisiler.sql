CREATE TABLE [GUSTO00005].[MSDigerYetkiliKisiler] (
  [MSDigerYetkiliKisiler_rowid] [int] IDENTITY,
  [pMSDigerKodu] [int] NULL DEFAULT (0),
  [sMSDigerYetkiliAdi] [varchar](60) NULL DEFAULT (''),
  [sMSDigerYetkiliGorevi] [varchar](30) NULL DEFAULT (''),
  [sMSDigerYetkiliAcik] [varchar](60) NULL DEFAULT (''),
  [sEMail] [varchar](40) NULL DEFAULT (''),
  [sYetkiliTelefon] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([MSDigerYetkiliKisiler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pMSDigerKodu]
  ON [GUSTO00005].[MSDigerYetkiliKisiler] ([pMSDigerKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO