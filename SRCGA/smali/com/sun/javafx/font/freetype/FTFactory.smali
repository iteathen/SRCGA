.class public Lcom/sun/javafx/font/freetype/FTFactory;
.super Lcom/sun/javafx/font/PrismFontFactory;
.source "FTFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/font/freetype/FTFactory$StubGlyphLayout;
    }
.end annotation


# static fields
.field static LCD_SUPPORT:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismFontFactory;-><init>()V

    .line 68
    return-void
.end method

.method public static getFactory()Lcom/sun/javafx/font/PrismFontFactory;
    .locals 16

    .prologue
    .line 40
    const/4 v10, 0x0

    move-object v0, v10

    .line 41
    .local v0, "factory":Lcom/sun/javafx/font/PrismFontFactory;
    const/4 v10, 0x1

    new-array v10, v10, [J

    move-object v1, v10

    .line 42
    .local v1, "ptr":[J
    move-object v10, v1

    invoke-static {v10}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Init_FreeType([J)I

    move-result v10

    move v2, v10

    .line 43
    .local v2, "error":I
    move-object v10, v1

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    move-wide v3, v10

    .line 44
    .local v3, "library":J
    const/4 v10, 0x1

    new-array v10, v10, [I

    move-object v5, v10

    .local v5, "major":[I
    const/4 v10, 0x1

    new-array v10, v10, [I

    move-object v6, v10

    .local v6, "minor":[I
    const/4 v10, 0x1

    new-array v10, v10, [I

    move-object v7, v10

    .line 45
    .local v7, "patch":[I
    move v10, v2

    if-nez v10, :cond_0

    .line 46
    new-instance v10, Lcom/sun/javafx/font/freetype/FTFactory;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Lcom/sun/javafx/font/freetype/FTFactory;-><init>()V

    move-object v0, v10

    .line 47
    move-wide v10, v3

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v10, v11, v12, v13, v14}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Library_Version(J[I[I[I)V

    .line 50
    move-wide v10, v3

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Library_SetLcdFilter(JI)I

    move-result v10

    move v2, v10

    .line 51
    move v10, v2

    if-nez v10, :cond_2

    const/4 v10, 0x1

    :goto_0
    sput-boolean v10, Lcom/sun/javafx/font/freetype/FTFactory;->LCD_SUPPORT:Z

    .line 52
    move-wide v10, v3

    invoke-static {v10, v11}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Done_FreeType(J)I

    move-result v10

    .line 54
    :cond_0
    sget-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v10, :cond_1

    .line 55
    move-object v10, v0

    if-eqz v10, :cond_4

    .line 56
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v5

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v7

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 57
    .local v8, "version":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Freetype2 Loaded (version "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    sget-boolean v10, Lcom/sun/javafx/font/freetype/FTFactory;->LCD_SUPPORT:Z

    if-eqz v10, :cond_3

    const-string v10, "Enabled"

    :goto_1
    move-object v9, v10

    .line 59
    .local v9, "lcdSupport":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LCD support "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    .line 64
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "lcdSupport":Ljava/lang/String;
    :cond_1
    :goto_2
    move-object v10, v0

    move-object v0, v10

    .end local v0    # "factory":Lcom/sun/javafx/font/PrismFontFactory;
    return-object v0

    .line 51
    .restart local v0    # "factory":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 58
    .restart local v8    # "version":Ljava/lang/String;
    :cond_3
    const-string v10, "Disabled"

    goto :goto_1

    .line 61
    .end local v8    # "version":Ljava/lang/String;
    :cond_4
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Freetype2 Failed (error "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected createFontFile(Ljava/lang/String;Ljava/lang/String;IZZZZ)Lcom/sun/javafx/font/PrismFontFile;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTFactory;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "filename":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "fIndex":I
    move/from16 v4, p4

    .local v4, "register":Z
    move/from16 v5, p5

    .local v5, "embedded":Z
    move/from16 v6, p6

    .local v6, "copy":Z
    move/from16 v7, p7

    .local v7, "tracked":Z
    new-instance v8, Lcom/sun/javafx/font/freetype/FTFontFile;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    invoke-direct/range {v9 .. v16}, Lcom/sun/javafx/font/freetype/FTFontFile;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTFactory;
    return-object v0
.end method

.method public createGlyphLayout()Lcom/sun/javafx/text/GlyphLayout;
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTFactory;
    invoke-static {}, Lcom/sun/javafx/font/freetype/OSFreetype;->isPangoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Lcom/sun/javafx/font/freetype/PangoGlyphLayout;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/font/freetype/PangoGlyphLayout;-><init>()V

    move-object v0, v1

    .line 87
    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTFactory;
    :goto_0
    return-object v0

    .line 84
    .restart local v0    # "this":Lcom/sun/javafx/font/freetype/FTFactory;
    :cond_0
    invoke-static {}, Lcom/sun/javafx/font/freetype/OSFreetype;->isHarfbuzzEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    new-instance v1, Lcom/sun/javafx/font/freetype/HBGlyphLayout;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/font/freetype/HBGlyphLayout;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 87
    :cond_1
    new-instance v1, Lcom/sun/javafx/font/freetype/FTFactory$StubGlyphLayout;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/font/freetype/FTFactory$StubGlyphLayout;-><init>()V

    move-object v0, v1

    goto :goto_0
.end method

.method public isLCDTextSupported()Z
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTFactory;
    sget-boolean v1, Lcom/sun/javafx/font/freetype/FTFactory;->LCD_SUPPORT:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/font/PrismFontFactory;->isLCDTextSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/freetype/FTFactory;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/font/freetype/FTFactory;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected registerEmbeddedFont(Ljava/lang/String;)Z
    .locals 17

    .prologue
    .line 97
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/font/freetype/FTFactory;
    move-object/from16 v2, p1

    .local v2, "path":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [J

    move-object v3, v10

    .line 98
    .local v3, "ptr":[J
    move-object v10, v3

    invoke-static {v10}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Init_FreeType([J)I

    move-result v10

    move v4, v10

    .line 99
    .local v4, "error":I
    move v10, v4

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    move v1, v10

    .line 112
    .end local v1    # "this":Lcom/sun/javafx/font/freetype/FTFactory;
    :goto_0
    return v1

    .line 100
    .restart local v1    # "this":Lcom/sun/javafx/font/freetype/FTFactory;
    :cond_0
    move-object v10, v3

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    move-wide v5, v10

    .line 101
    .local v5, "library":J
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u0000"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    move-object v7, v10

    .line 102
    .local v7, "buffer":[B
    move-wide v10, v5

    move-object v12, v7

    const-wide/16 v13, 0x0

    move-object v15, v3

    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_New_Face(J[BJ[J)I

    move-result v10

    move v4, v10

    .line 103
    move v10, v4

    if-eqz v10, :cond_1

    .line 104
    move-object v10, v3

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    move-wide v8, v10

    .line 105
    .local v8, "face":J
    move-wide v10, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Done_Face(J)I

    move-result v10

    .line 107
    .end local v8    # "face":J
    :cond_1
    move-wide v10, v5

    invoke-static {v10, v11}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Done_FreeType(J)I

    move-result v10

    .line 108
    move v10, v4

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    move v1, v10

    goto :goto_0

    .line 109
    :cond_2
    invoke-static {}, Lcom/sun/javafx/font/freetype/OSFreetype;->isPangoEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 110
    const-wide/16 v10, 0x0

    move-object v12, v2

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/font/freetype/OSPango;->FcConfigAppFontAddFile(JLjava/lang/String;)Z

    move-result v10

    move v1, v10

    goto :goto_0

    .line 112
    :cond_3
    const/4 v10, 0x1

    move v1, v10

    goto :goto_0
.end method
