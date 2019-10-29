SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [Gusto].[MetinParcala]

    ( 

       @Metin NVARCHAR(MAX),

       @Ayrac NVARCHAR(MAX)

    )

    RETURNS @AyrismisTablo TABLE 

    (

       ID INT IDENTITY(1,1),

       AyrilmisMetin NVARCHAR(MAX)

    ) 

    AS

    BEGIN 

       DECLARE @Sayac INT

      SET @Sayac = 1 

     DECLARE @Index INT

      SET @Index = CHARINDEX(@Ayrac,@Metin) 

     WHILE (@Index>0)

       BEGIN

          INSERT INTO @AyrismisTablo (AyrilmisMetin)

          SELECT 

          AyrilmisMetin = LTRIM(RTRIM(SUBSTRING(@Metin, 1, @Index - 1)))
        
 
        SET @Metin = SUBSTRING(@Metin,

          @Index + DATALENGTH(@Ayrac) / 2,

          LEN(@Metin))
         SET @Sayac = @Sayac + 1

          SET @Index = CHARINDEX(@Ayrac, @Metin)

       END

  

       INSERT INTO @AyrismisTablo (AyrilmisMetin)

       SELECT AyrilmisMetin = LTRIM(RTRIM(@Metin))

      RETURN

    END
GO