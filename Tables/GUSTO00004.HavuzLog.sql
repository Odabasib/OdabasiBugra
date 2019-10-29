CREATE TABLE [GUSTO00004].[HavuzLog] (
  [HavuzLog_rowid] [int] IDENTITY,
  [pHavuz] [int] NULL DEFAULT (0),
  [pOlusanHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([HavuzLog_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO