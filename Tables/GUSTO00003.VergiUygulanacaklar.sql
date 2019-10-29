CREATE TABLE [GUSTO00003].[VergiUygulanacaklar] (
  [VergiUygulanacaklar_rowid] [int] IDENTITY,
  [pVergiTanimi] [int] NULL DEFAULT (0),
  [pUygulanacakHesap] [int] NULL DEFAULT (0),
  [cHesapTuru] [char](1) NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([VergiUygulanacaklar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [Uygulama]
  ON [GUSTO00003].[VergiUygulanacaklar] ([pUygulanacakHesap], [cHesapTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Vergi]
  ON [GUSTO00003].[VergiUygulanacaklar] ([pVergiTanimi], [cHesapTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO