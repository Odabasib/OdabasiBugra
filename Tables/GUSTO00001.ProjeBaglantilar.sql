CREATE TABLE [GUSTO00001].[ProjeBaglantilar] (
  [ProjeBaglantilar_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [pOperasyonKodu] [int] NULL DEFAULT (0),
  [sHedefTuru] [varchar](4) NULL DEFAULT (''),
  [pHedefBelge] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeBaglantilar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO