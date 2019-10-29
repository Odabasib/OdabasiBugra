CREATE TABLE [GUSTO00005].[ElTerminaliSeriTanimla] (
  [ElTerminaliSeriTanimla_rowid] [int] IDENTITY,
  [sSeriDizisi] [varchar](50) NULL DEFAULT (''),
  [sSerisi] [varchar](50) NULL DEFAULT (''),
  [nHareketTuru] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ElTerminaliSeriTanimla_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO