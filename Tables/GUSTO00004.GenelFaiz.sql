CREATE TABLE [GUSTO00004].[GenelFaiz] (
  [GenelFaiz_rowid] [int] IDENTITY,
  [dFaizOrani] [decimal](22, 2) NULL DEFAULT (0),
  [dtYayinTarihi] [smalldatetime] NULL,
  [pDoviz] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GenelFaiz_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pDoviz]
  ON [GUSTO00004].[GenelFaiz] ([pDoviz])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO