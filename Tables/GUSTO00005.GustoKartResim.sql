CREATE TABLE [GUSTO00005].[GustoKartResim] (
  [GustoKartResim_rowid] [int] IDENTITY,
  [nKartTuru] [smallint] NULL DEFAULT (0),
  [pKartKodu] [int] NULL DEFAULT (0),
  [POBJECT] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([GustoKartResim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [nKartTuru]
  ON [GUSTO00005].[GustoKartResim] ([nKartTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKartKodu]
  ON [GUSTO00005].[GustoKartResim] ([pKartKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO