CREATE TABLE [GUSTO00003].[HareketDegiskenSatirlari] (
  [HareketDegiskenSatirlari_rowid] [int] IDENTITY,
  [pBaslik] [int] NULL DEFAULT (0),
  [pDegisken] [int] NULL DEFAULT (0),
  [nDegiskenTuru] [tinyint] NULL DEFAULT (0),
  [sVarsayilanSonuc] [varchar](499) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HareketDegiskenSatirlari_rowid])
)
ON [PRIMARY]
GO