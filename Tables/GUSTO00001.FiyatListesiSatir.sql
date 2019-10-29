CREATE TABLE [GUSTO00001].[FiyatListesiSatir] (
  [FiyatListesiSatir_rowid] [int] IDENTITY,
  [pFiyatListesiAd] [int] NULL DEFAULT (0),
  [nBaslikTur] [smallint] NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT (' '),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pOdemeKosulu] [int] NULL DEFAULT (0),
  [nReferans] [smallint] NULL DEFAULT (0),
  [cKDVDahilHaric] [char](1) NULL DEFAULT (' '),
  [ldBrutFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldNetFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldBrutFiyatYTL] [decimal](22, 6) NULL DEFAULT (0),
  [ldNetFiyatYTL] [decimal](22, 6) NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NULL DEFAULT (' '),
  [bNetFiyat] [bit] NULL DEFAULT (0),
  [bTutarSabit] [bit] NULL DEFAULT (0),
  [ldMinimumSiparisMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldMinimumSiparisTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldMaximumSiparisMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldMaximumSiparisTutari] [decimal](22, 2) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [cPromosyon] [char](1) NULL DEFAULT (' '),
  [ldKacTaneIcin] [decimal](22, 2) NULL DEFAULT (0),
  [ldKacTaneMalFazlasi] [decimal](22, 2) NULL DEFAULT (0),
  [ldMalFazlasiBolen] [decimal](22, 2) NULL DEFAULT (0),
  [cOranlama] [char](1) NULL DEFAULT (' '),
  [cYuvarlama] [char](1) NULL DEFAULT (' '),
  [nYuvarlamaHassasiyeti] [smallint] NULL DEFAULT (0),
  [cKDVAlAlma] [char](1) NULL DEFAULT (' '),
  [ldKDVOrani] [decimal](22, 2) NULL DEFAULT (0),
  [cBaglanti] [char](1) NULL DEFAULT (' '),
  [pBagliOlduguSatir] [int] NULL DEFAULT (0),
  [ldSetMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [pSetTanimi] [int] NULL DEFAULT (0),
  [dtBaslangicTarih] [smalldatetime] NULL,
  [dtBitisTarih] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [bKDVOraniGecerli] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FiyatListesiSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [FiyalListeStokKoduKey]
  ON [GUSTO00001].[FiyatListesiSatir] ([pFiyatListesiAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pBagliOlduguSatir]
  ON [GUSTO00001].[FiyatListesiSatir] ([pBagliOlduguSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pOdemeKosulu]
  ON [GUSTO00001].[FiyatListesiSatir] ([pOdemeKosulu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokKoduKey]
  ON [GUSTO00001].[FiyatListesiSatir] ([pStokKodu], [pIzlemeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Buğra Odabaşı
-- Create date: 14.09.2018
-- Description:	Fiyat Listesinden Silinen Bir Stoğun Kaydı Gusto.BPM_StokKartiOlusturma tablosunda yer alıyor ise
--bu kaydın Güncellenmesi için tasarlanmıştır.
-- =============================================
CREATE TRIGGER [BPM_StokKartiOlusturma_FiyatListesi]
   ON  [GUSTO00001].[FiyatListesiSatir]
   AFTER DELETE
AS 
BEGIN
	
	SET NOCOUNT ON;

	declare @FiyatListesiSatir_Rowid int;
	declare @LogTable_Rowid int;
	declare @FaaliyetId int;

	--set @FiyatListesiSatir_Rowid=(select FiyatListesiSatir_rowid from deleted);

	--if @FiyatListesiSatir_Rowid>0 begin

		--if exists (select * from Gusto.BPM_StokKartiOlusturma s where pFiyatListesineEklendi=1 and s.pFiyatListesiSatir=@FiyatListesiSatir_Rowid) begin

		--	select @LogTable_Rowid=isnull(Rowid,0),@FaaliyetId=isnull(pFaaliyetID,0) from Gusto.BPM_StokKartiOlusturma where pFiyatListesiSatir=@FiyatListesiSatir_Rowid;

		--	if (@LogTable_Rowid!=0 and @FaaliyetId!=0) begin

		--		Update Gusto.BPM_StokKartiOlusturma set pFiyatListesiSatir=0,pFiyatListesineEklendi='0' where Rowid=@LogTable_Rowid;
		--		update Gusto.BPMFT_UASTOKKODUOLUSTURMA set sDurum='Fiyat Listesine Eklenen Stok Kodu,Fiyat Listesinden Manuel Olarak Silinmiştir.' where PFAALIYET=@FaaliyetId;

		--	end

		--end

	--end

END
GO