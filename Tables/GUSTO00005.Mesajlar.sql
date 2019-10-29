CREATE TABLE [GUSTO00005].[Mesajlar] (
  [Mesajlar_rowid] [int] IDENTITY,
  [pOlayTanimi] [int] NULL DEFAULT (0),
  [pAliciKullanici] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [tmZaman] [int] NULL DEFAULT (0),
  [sOlayTanimiAdi] [varchar](60) NULL DEFAULT (''),
  [cOkundu] [char](1) NULL DEFAULT (' '),
  [sDigerBilgiler] [varchar](2048) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([Mesajlar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KullaniciZamanKey]
  ON [GUSTO00005].[Mesajlar] ([pAliciKullanici], [dtTarih], [tmZaman])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO