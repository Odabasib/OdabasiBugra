CREATE TABLE [GUSTO00005].[BankaYetkiliKisiler] (
  [BankaYetkiliKisiler_rowid] [int] IDENTITY,
  [pBankaKodu] [int] NULL DEFAULT (0),
  [sBankaYetkiliAdi] [varchar](60) NULL DEFAULT (''),
  [sBankaYetkiliGorevi] [varchar](30) NULL DEFAULT (''),
  [sBankaYetkiliAcik] [varchar](60) NULL DEFAULT (''),
  [sEMail] [varchar](40) NULL DEFAULT (''),
  [sYetkiliTelefon] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([BankaYetkiliKisiler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pBankaKodu]
  ON [GUSTO00005].[BankaYetkiliKisiler] ([pBankaKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO