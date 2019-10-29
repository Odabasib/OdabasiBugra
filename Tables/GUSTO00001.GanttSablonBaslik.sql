CREATE TABLE [GUSTO00001].[GanttSablonBaslik] (
  [GanttSablonBaslik_rowid] [int] IDENTITY,
  [sAd] [varchar](40) NULL DEFAULT (''),
  [sAciklama] [varchar](40) NULL DEFAULT (''),
  [pBaslik] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NOT NULL,
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GanttSablonBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO