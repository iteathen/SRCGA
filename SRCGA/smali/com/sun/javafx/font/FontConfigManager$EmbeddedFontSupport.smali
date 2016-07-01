.class Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;
.super Ljava/lang/Object;
.source "FontConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/FontConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmbeddedFontSupport"
.end annotation


# static fields
.field private static fontDir:Ljava/lang/String;

.field private static fontDirFromJRE:Z

.field private static fontDirProp:Ljava/lang/String;

.field static jreFontsProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 345
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->fontDirProp:Ljava/lang/String;

    .line 347
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->fontDirFromJRE:Z

    .line 350
    invoke-static {}, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport$$Lambda$3;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 408
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "sans.regular.0.font"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "Lucida Sans Regular"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "sans.regular.0.file"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "LucidaSansRegular.ttf"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "sans.bold.0.font"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "Lucida Sans Bold"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "sans.bold.0.file"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "LucidaSansDemiBold.ttf"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string v3, "monospace.regular.0.font"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string v3, "Lucida Typewriter Regular"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string v3, "monospace.regular.0.file"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string v3, "LucidaTypewriterRegular.ttf"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string v3, "monospace.bold.0.font"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string v3, "Lucida Typewriter Bold"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string v3, "monospace.bold.0.file"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    const-string v3, "LucidaTypewriterBold.ttf"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    const-string v3, "serif.regular.0.font"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const-string v3, "Lucida Bright"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    const-string v3, "serif.regular.0.file"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    const-string v3, "LucidaBrightRegular.ttf"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x14

    const-string v3, "serif.bold.0.font"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x15

    const-string v3, "Lucida Bright Demibold"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x16

    const-string v3, "serif.bold.0.file"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x17

    const-string v3, "LucidaBrightDemiBold.ttf"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x18

    const-string v3, "serif.italic.0.font"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x19

    const-string v3, "Lucida Bright Italic"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1a

    const-string v3, "serif.italic.0.file"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1b

    const-string v3, "LucidaBrightItalic.ttf"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1c

    const-string v3, "serif.bolditalic.0.font"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1d

    const-string v3, "Lucida Bright Demibold Italic"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1e

    const-string v3, "serif.bolditalic.0.file"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1f

    const-string v3, "LucidaBrightDemiItalic.ttf"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->jreFontsProperties:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/io/File;)Ljava/lang/Boolean;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->lambda$exists$239(Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljava/util/Properties;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->lambda$populateMaps$240(Ljava/util/Properties;)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$2()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->lambda$static$238()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private static exists(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "f":Ljava/io/File;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport$$Lambda$1;->lambdaFactory$(Ljava/io/File;)Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "f":Ljava/io/File;
    return v0
.end method

.method private static getStyleStr(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    move v0, p0

    .local v0, "style":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 395
    const-string v1, "regular"

    move-object v0, v1

    .end local v0    # "style":I
    :goto_0
    return-object v0

    .line 391
    .restart local v0    # "style":I
    :pswitch_0
    const-string v1, "regular"

    move-object v0, v1

    goto :goto_0

    .line 392
    :pswitch_1
    const-string v1, "bold"

    move-object v0, v1

    goto :goto_0

    .line 393
    :pswitch_2
    const-string v1, "italic"

    move-object v0, v1

    goto :goto_0

    .line 394
    :pswitch_3
    const-string v1, "bolditalic"

    move-object v0, v1

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static initEmbeddedFonts()V
    .locals 7

    .prologue
    .line 359
    const-string v2, "prism.fontdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->fontDirProp:Ljava/lang/String;

    .line 360
    sget-object v2, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->fontDirProp:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 361
    sget-object v2, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->fontDirProp:Ljava/lang/String;

    sput-object v2, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->fontDir:Ljava/lang/String;

    .line 387
    :goto_0
    return-void

    .line 366
    :cond_0
    :try_start_0
    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 367
    .local v0, "javaHome":Ljava/lang/String;
    move-object v2, v0

    if-nez v2, :cond_1

    .line 368
    goto :goto_0

    .line 370
    :cond_1
    new-instance v2, Ljava/io/File;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "lib/fonts"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 371
    .local v1, "fontDirectory":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->fontDirFromJRE:Z

    .line 373
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->fontDir:Ljava/lang/String;

    .line 375
    :cond_2
    sget-boolean v2, Lcom/sun/javafx/font/FontConfigManager;->debugFonts:Z

    if-eqz v2, :cond_3

    .line 376
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fallback fontDir is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exists = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    .line 378
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_3
    goto :goto_0

    .line 380
    .end local v1    # "fontDirectory":Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/sun/javafx/font/FontConfigManager;->debugFonts:Z

    if-eqz v2, :cond_4

    .line 382
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    :cond_4
    const-string v2, "/"

    sput-object v2, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->fontDir:Ljava/lang/String;

    goto :goto_0
.end method

.method static initLogicalFonts([Lcom/sun/javafx/font/FontConfigManager$FcCompFont;)V
    .locals 18

    .prologue
    .line 450
    move-object/from16 v0, p0

    .local v0, "fonts":[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    new-instance v12, Ljava/util/Properties;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/util/Properties;-><init>()V

    move-object v1, v12

    .line 452
    .local v1, "props":Ljava/util/Properties;
    :try_start_0
    new-instance v12, Ljava/io/File;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    sget-object v14, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->fontDir:Ljava/lang/String;

    const-string v15, "logicalfonts.properties"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v12

    .line 453
    .local v2, "f":Ljava/io/File;
    move-object v12, v2

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 454
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v2

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v12

    .line 455
    .local v3, "fis":Ljava/io/FileInputStream;
    move-object v12, v1

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 456
    move-object v12, v3

    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .line 473
    .line 474
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    const/4 v12, 0x0

    move v2, v12

    .local v2, "f":I
    :goto_1
    move v12, v2

    move-object v13, v0

    array-length v13, v13

    if-ge v12, v13, :cond_8

    .line 475
    move-object v12, v0

    move v13, v2

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->fcFamily:Ljava/lang/String;

    move-object v3, v12

    .line 476
    .local v3, "fcFamily":Ljava/lang/String;
    move-object v12, v0

    move v13, v2

    aget-object v12, v12, v13

    iget v12, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->style:I

    invoke-static {v12}, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->getStyleStr(I)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 477
    .local v4, "styleStr":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 478
    .local v5, "key":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v12

    .line 480
    .local v6, "allFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;>;"
    const/4 v12, 0x0

    move v7, v12

    .line 482
    .local v7, "i":I
    :cond_1
    :goto_2
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".file"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 483
    .local v8, "file":Ljava/lang/String;
    move-object v12, v1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".font"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 484
    .local v9, "font":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    .line 485
    move-object v12, v8

    if-nez v12, :cond_5

    .line 486
    .line 505
    move-object v12, v6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 506
    move-object v12, v0

    move v13, v2

    aget-object v12, v12, v13

    move-object v13, v6

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    iput-object v13, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->allFonts:[Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    .line 507
    move-object v12, v6

    move-object v13, v0

    move v14, v2

    aget-object v13, v13, v14

    iget-object v13, v13, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->allFonts:[Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    .line 474
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 457
    .end local v3    # "fcFamily":Ljava/lang/String;
    .end local v4    # "styleStr":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "allFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;>;"
    .end local v7    # "i":I
    .end local v8    # "file":Ljava/lang/String;
    .end local v9    # "font":Ljava/lang/String;
    .local v2, "f":Ljava/io/File;
    :cond_3
    :try_start_1
    sget-boolean v12, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->fontDirFromJRE:Z

    if-eqz v12, :cond_0

    .line 461
    const/4 v12, 0x0

    move v3, v12

    .local v3, "i":I
    :goto_3
    move v12, v3

    sget-object v13, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->jreFontsProperties:[Ljava/lang/String;

    array-length v13, v13

    if-ge v12, v13, :cond_4

    .line 462
    move-object v12, v1

    sget-object v13, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->jreFontsProperties:[Ljava/lang/String;

    move v14, v3

    aget-object v13, v13, v14

    sget-object v14, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->jreFontsProperties:[Ljava/lang/String;

    move v15, v3

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 461
    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    .line 464
    :cond_4
    sget-boolean v12, Lcom/sun/javafx/font/FontConfigManager;->debugFonts:Z

    if-eqz v12, :cond_0

    .line 465
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Using fallback implied logicalfonts.properties"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 468
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i":I
    :catch_0
    move-exception v12

    move-object v2, v12

    .line 469
    .local v2, "ioe":Ljava/io/IOException;
    sget-boolean v12, Lcom/sun/javafx/font/FontConfigManager;->debugFonts:Z

    if-eqz v12, :cond_0

    .line 470
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 471
    .line 510
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_4
    return-void

    .line 488
    .local v2, "f":I
    .local v3, "fcFamily":Ljava/lang/String;
    .restart local v4    # "styleStr":Ljava/lang/String;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "allFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;>;"
    .restart local v7    # "i":I
    .restart local v8    # "file":Ljava/lang/String;
    .restart local v9    # "font":Ljava/lang/String;
    :cond_5
    new-instance v12, Ljava/io/File;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    sget-object v14, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->fontDir:Ljava/lang/String;

    move-object v15, v8

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v12

    .line 489
    .local v10, "ff":Ljava/io/File;
    move-object v12, v10

    invoke-static {v12}, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->exists(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 490
    sget-boolean v12, Lcom/sun/javafx/font/FontConfigManager;->debugFonts:Z

    if-eqz v12, :cond_1

    .line 491
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to find logical font file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 495
    :cond_6
    new-instance v12, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;-><init>()V

    move-object v11, v12

    .line 496
    .local v11, "fcFont":Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;
    move-object v12, v11

    move-object v13, v10

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    .line 497
    move-object v12, v11

    move-object v13, v9

    iput-object v13, v12, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->fullName:Ljava/lang/String;

    .line 498
    move-object v12, v11

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->familyName:Ljava/lang/String;

    .line 499
    move-object v12, v11

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->styleStr:Ljava/lang/String;

    .line 500
    move-object v12, v0

    move v13, v2

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->firstFont:Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    if-nez v12, :cond_7

    .line 501
    move-object v12, v0

    move v13, v2

    aget-object v12, v12, v13

    move-object v13, v11

    iput-object v13, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->firstFont:Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    .line 503
    :cond_7
    move-object v12, v6

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 504
    goto/16 :goto_2

    .line 510
    .end local v3    # "fcFamily":Ljava/lang/String;
    .end local v4    # "styleStr":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "allFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;>;"
    .end local v7    # "i":I
    .end local v8    # "file":Ljava/lang/String;
    .end local v9    # "font":Ljava/lang/String;
    .end local v10    # "ff":Ljava/io/File;
    .end local v11    # "fcFont":Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;
    :cond_8
    goto :goto_4
.end method

.method private static synthetic lambda$exists$239(Ljava/io/File;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "f":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "f":Ljava/io/File;
    return-object v0
.end method

.method private static synthetic lambda$populateMaps$240(Ljava/util/Properties;)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 548
    move-object v0, p0

    .local v0, "props":Ljava/util/Properties;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->fontDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/allfonts.properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 549
    .local v1, "lFile":Ljava/lang/String;
    new-instance v3, Ljava/io/FileInputStream;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 550
    .local v2, "fis":Ljava/io/FileInputStream;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 551
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .line 559
    .end local v1    # "lFile":Ljava/lang/String;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "props":Ljava/util/Properties;
    return-object v0

    .line 552
    .restart local v0    # "props":Ljava/util/Properties;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 553
    .local v1, "ioe":Ljava/io/IOException;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Properties;->clear()V

    .line 554
    sget-boolean v3, Lcom/sun/javafx/font/FontConfigManager;->debugFonts:Z

    if-eqz v3, :cond_0

    .line 555
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 556
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Fall back to opening the files"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static synthetic lambda$static$238()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 352
    invoke-static {}, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->initEmbeddedFonts()V

    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method static populateMaps(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .prologue
    .line 544
    move-object/from16 v0, p0

    .local v0, "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p1

    .local v1, "fontToFamilyNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v2, p2

    .local v2, "familyToFontListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    move-object/from16 v3, p3

    .local v3, "locale":Ljava/util/Locale;
    new-instance v14, Ljava/util/Properties;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/util/Properties;-><init>()V

    move-object v4, v14

    .line 545
    .local v4, "props":Ljava/util/Properties;
    move-object v14, v4

    invoke-static {v14}, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport$$Lambda$2;->lambdaFactory$(Ljava/util/Properties;)Ljava/security/PrivilegedAction;

    move-result-object v14

    invoke-static {v14}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v14

    .line 563
    move-object v14, v4

    invoke-virtual {v14}, Ljava/util/Properties;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 564
    const v14, 0x7fffffff

    move v5, v14

    .line 566
    .local v5, "maxFont":I
    move-object v14, v4

    :try_start_0
    const-string v15, "maxFont"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    move v5, v14

    .line 568
    .line 569
    :goto_0
    move v14, v5

    if-gtz v14, :cond_0

    .line 570
    const v14, 0x7fffffff

    move v5, v14

    .line 572
    :cond_0
    const/4 v14, 0x0

    move v6, v14

    .local v6, "f":I
    :goto_1
    move v14, v6

    move v15, v5

    if-ge v14, v15, :cond_1

    .line 573
    move-object v14, v4

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "family."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 574
    .local v7, "family":Ljava/lang/String;
    move-object v14, v4

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "font."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 575
    .local v8, "font":Ljava/lang/String;
    move-object v14, v4

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 576
    .local v9, "file":Ljava/lang/String;
    move-object v14, v9

    if-nez v14, :cond_2

    .line 577
    .line 599
    .end local v5    # "maxFont":I
    .end local v6    # "f":I
    .end local v7    # "family":Ljava/lang/String;
    .end local v8    # "font":Ljava/lang/String;
    .end local v9    # "file":Ljava/lang/String;
    :cond_1
    return-void

    .line 567
    .restart local v5    # "maxFont":I
    :catch_0
    move-exception v14

    move-object v6, v14

    goto :goto_0

    .line 579
    .restart local v6    # "f":I
    .restart local v7    # "family":Ljava/lang/String;
    .restart local v8    # "font":Ljava/lang/String;
    .restart local v9    # "file":Ljava/lang/String;
    :cond_2
    new-instance v14, Ljava/io/File;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    sget-object v16, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->fontDir:Ljava/lang/String;

    move-object/from16 v17, v9

    invoke-direct/range {v15 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v14

    .line 580
    .local v10, "ff":Ljava/io/File;
    move-object v14, v10

    invoke-static {v14}, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->exists(Ljava/io/File;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 581
    .line 572
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 583
    :cond_4
    move-object v14, v7

    if-eqz v14, :cond_3

    move-object v14, v8

    if-nez v14, :cond_5

    .line 584
    goto :goto_2

    .line 586
    :cond_5
    move-object v14, v8

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    .line 587
    .local v11, "fontLC":Ljava/lang/String;
    move-object v14, v7

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 588
    .local v12, "familyLC":Ljava/lang/String;
    move-object v14, v0

    move-object v15, v11

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 589
    move-object v14, v1

    move-object v15, v11

    move-object/from16 v16, v7

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 590
    move-object v14, v2

    move-object v15, v12

    .line 591
    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-object v13, v14

    .line 592
    .local v13, "familyArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v14, v13

    if-nez v14, :cond_6

    .line 593
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x4

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v14

    .line 594
    move-object v14, v2

    move-object v15, v12

    move-object/from16 v16, v13

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 596
    :cond_6
    move-object v14, v13

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    goto :goto_2
.end method
