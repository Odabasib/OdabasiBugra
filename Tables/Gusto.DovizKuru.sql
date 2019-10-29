CREATE TABLE [Gusto].[DovizKuru] (
  [DovizKuru_rowid] [int] IDENTITY,
  [pYerelParaBirimi] [int] NOT NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NOT NULL,
  [pDoviz] [int] NOT NULL DEFAULT (0),
  [pDovizYeri] [int] NOT NULL DEFAULT (0),
  [dAlis] [decimal](22, 12) NULL DEFAULT (0),
  [dSatis] [decimal](22, 12) NULL DEFAULT (0),
  [dEfektifAlis] [decimal](22, 12) NULL DEFAULT (0),
  [dEfektifSatis] [decimal](22, 12) NULL DEFAULT (0),
  [dCaprazKur] [decimal](22, 12) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DovizKuru_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [YPBDovizYerTarihKey]
  ON [Gusto].[DovizKuru] ([pYerelParaBirimi], [pDoviz], [pDovizYeri], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [YPBTarihYerDovizKey]
  ON [Gusto].[DovizKuru] ([pYerelParaBirimi], [dtTarih], [pDovizYeri], [pDoviz])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [YPBYerDovizTarihKey]
  ON [Gusto].[DovizKuru] ([pYerelParaBirimi], [pDovizYeri], [pDoviz], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO