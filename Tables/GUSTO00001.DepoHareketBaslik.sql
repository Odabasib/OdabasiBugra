﻿CREATE TABLE [GUSTO00001].[DepoHareketBaslik] (
  [DepoHareketBaslik_rowid] [int] IDENTITY,
  [dtTarih] [smalldatetime] NULL,
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [pDepoGiris] [int] NULL DEFAULT (0),
  [pDepoCikis] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](120) NULL DEFAULT (''),
  [cOnayDurumu] [char](1) NULL DEFAULT ('G'),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DepoHareketBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [Depo]
  ON [GUSTO00001].[DepoHareketBaslik] ([pDepoCikis], [pDepoGiris])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriNo]
  ON [GUSTO00001].[DepoHareketBaslik] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Tarih]
  ON [GUSTO00001].[DepoHareketBaslik] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Buğra Odabaşı
-- Create date: 15.12.2017
-- Description:	Silinen Depo Transfer Hareketinin DepoTransfer_Log tablosu kayıtlarını revize etmesini sağlar
-- =============================================
CREATE TRIGGER [DepoTransferKontrol] 
   ON  [GUSTO00001].[DepoHareketBaslik]
   AFTER DELETE
AS 
BEGIN
	declare @pDepoHareketBaslik int;
	declare @pFaaliyet int;
	
	set @pDepoHareketBaslik=(select DepoHareketBaslik_rowid from deleted);

	delete from Gusto.BPMCG_OlusanDepoTransferleri where pOlusanTransfer=@pDepoHareketBaslik;

	if ((select count(*) from [Gusto].[DepoTransferLog] where bTopluDepoTransfer_Rowid=@pDepoHareketBaslik)!=0) begin

	delete from [Gusto].[DepoTransferLog] where bTopluDepoTransfer_Rowid=@pDepoHareketBaslik;

	end



END
GO