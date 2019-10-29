CREATE TABLE [GUSTO00004].[SistemOlaylari] (
  [SistemOlaylari_rowid] [int] IDENTITY,
  [nEventID] [int] NOT NULL DEFAULT (0),
  [sOlayAdi] [varchar](255) NULL DEFAULT (''),
  [bPasif] [bit] NULL DEFAULT (0),
  [dtOlusma] [smalldatetime] NULL,
  [tmOlusma] [int] NULL DEFAULT (0),
  [pOlayDetayi] [int] NULL DEFAULT (0),
  [pKosul] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([SistemOlaylari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [nEventID]
  ON [GUSTO00004].[SistemOlaylari] ([nEventID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO