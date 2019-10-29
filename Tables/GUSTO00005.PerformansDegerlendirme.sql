CREATE TABLE [GUSTO00005].[PerformansDegerlendirme] (
  [PerformansDegerlendirme_rowid] [int] IDENTITY,
  [pPerformansTanimi] [int] NULL DEFAULT (0),
  [cDegerlendirmeTuru] [char](1) NOT NULL DEFAULT (' '),
  [pDegerlentirmeTuru] [int] NULL DEFAULT (0),
  [pDegerlendirmeDonemi] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [pOrganizasyon] [int] NULL DEFAULT (0),
  [dtHesaplamaTarihi] [smalldatetime] NULL,
  [ldPuan] [decimal](22, 6) NULL DEFAULT (0),
  [ldHedeflenenPuan] [decimal](22, 6) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PerformansDegerlendirme_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [PerformansTanimDonemPers]
  ON [GUSTO00005].[PerformansDegerlendirme] ([cDegerlendirmeTuru], [pPerformansTanimi], [pDegerlentirmeTuru], [pDegerlendirmeDonemi], [pPersonel], [pOrganizasyon], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO