CREATE TABLE [GUSTO00003].[GanttHareketSatirlari] (
  [GanttHareketSatirlari_rowid] [int] IDENTITY,
  [pBaslik] [int] NULL DEFAULT (0),
  [nTur] [int] NOT NULL DEFAULT (0),
  [pHareket] [int] NULL DEFAULT (0),
  [dtBaslangicTarihi] [smalldatetime] NOT NULL,
  [dtBitisTarihi] [smalldatetime] NOT NULL,
  [tmBaslangicZamani] [int] NOT NULL DEFAULT (0),
  [tmBitisZamani] [int] NOT NULL DEFAULT (0),
  [nOncelik] [int] NOT NULL DEFAULT (0),
  [nPlanlamaStratejisi] [int] NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GanttHareketSatirlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO