CREATE TABLE [GUSTO00005].[SiparisOngorusuBaslik] (
  [SiparisOngorusuBaslik_rowid] [int] IDENTITY,
  [pDonem] [int] NULL DEFAULT (0),
  [sOngoruAdi] [varchar](50) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [dtOngoruTarihi] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SiparisOngorusuBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ButcePlanlamiDonemi]
  ON [GUSTO00005].[SiparisOngorusuBaslik] ([dtOngoruTarihi], [pDonem])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO