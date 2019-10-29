CREATE TABLE [GUSTO00004].[GanttBaslik] (
  [GanttBaslik_rowid] [int] IDENTITY,
  [sSeri] [varchar](40) NULL DEFAULT (''),
  [nNo] [int] NOT NULL DEFAULT (0),
  [sAciklama] [varchar](40) NULL DEFAULT (''),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GanttBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO