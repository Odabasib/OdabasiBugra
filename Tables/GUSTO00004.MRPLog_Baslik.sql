CREATE TABLE [GUSTO00004].[MRPLog_Baslik] (
  [MRPLog_Baslik_rowid] [int] IDENTITY,
  [nPlanlamaTuru] [smallint] NULL DEFAULT (0),
  [sAciklama] [varchar](120) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MRPLog_Baslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO