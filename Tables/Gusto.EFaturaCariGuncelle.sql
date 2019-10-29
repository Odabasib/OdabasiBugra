CREATE TABLE [Gusto].[EFaturaCariGuncelle] (
  [Rowid] [int] IDENTITY,
  [pMusteri] [int] NOT NULL,
  [sVergiKimlikNo] [varchar](30) NULL,
  [dtGuncellemeTarih] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([Rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO