.class public Lcom/sun/javafx/font/PrismFontLoader;
.super Lcom/sun/javafx/tk/FontLoader;
.source "PrismFontLoader.java"


# static fields
.field private static theInstance:Lcom/sun/javafx/font/PrismFontLoader;


# instance fields
.field private embeddedFontsLoaded:Z

.field installedFontFactory:Lcom/sun/javafx/font/FontFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/sun/javafx/font/PrismFontLoader;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismFontLoader;-><init>()V

    sput-object v0, Lcom/sun/javafx/font/PrismFontLoader;->theInstance:Lcom/sun/javafx/font/PrismFontLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/FontLoader;-><init>()V

    .line 46
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/font/PrismFontLoader;->embeddedFontsLoaded:Z

    .line 243
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/font/PrismFontLoader;->installedFontFactory:Lcom/sun/javafx/font/FontFactory;

    return-void
.end method

.method private createFont(Lcom/sun/javafx/font/PGFont;)Ljavafx/scene/text/Font;
    .locals 8

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    move-object v1, p1

    .local v1, "font":Lcom/sun/javafx/font/PGFont;
    move-object v2, v1

    move-object v3, v1

    .line 107
    invoke-interface {v3}, Lcom/sun/javafx/font/PGFont;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    .line 108
    invoke-interface {v4}, Lcom/sun/javafx/font/PGFont;->getFamilyName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    .line 109
    invoke-interface {v5}, Lcom/sun/javafx/font/PGFont;->getStyleName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    .line 110
    invoke-interface {v6}, Lcom/sun/javafx/font/PGFont;->getSize()F

    move-result v6

    float-to-double v6, v6

    .line 106
    invoke-static/range {v2 .. v7}, Ljavafx/scene/text/Font;->impl_NativeFont(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Ljavafx/scene/text/Font;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    return-object v0
.end method

.method private getFontFactoryFromPipeline()Lcom/sun/javafx/font/FontFactory;
    .locals 9

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontLoader;->installedFontFactory:Lcom/sun/javafx/font/FontFactory;

    if-eqz v6, :cond_0

    .line 246
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontLoader;->installedFontFactory:Lcom/sun/javafx/font/FontFactory;

    move-object v0, v6

    .line 257
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    :goto_0
    return-object v0

    .line 249
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    :cond_0
    :try_start_0
    const-string v6, "com.sun.prism.GraphicsPipeline"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v1, v6

    .line 250
    .local v1, "plc":Ljava/lang/Class;
    move-object v6, v1

    const-string v7, "getPipeline"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v2, v6

    .line 251
    .local v2, "gpm":Ljava/lang/reflect/Method;
    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 252
    .local v3, "plo":Ljava/lang/Object;
    move-object v6, v1

    const-string v7, "getFontFactory"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v4, v6

    .line 253
    .local v4, "gfm":Ljava/lang/reflect/Method;
    move-object v6, v4

    move-object v7, v3

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 254
    .local v5, "ffo":Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v5

    check-cast v7, Lcom/sun/javafx/font/FontFactory;

    iput-object v7, v6, Lcom/sun/javafx/font/PrismFontLoader;->installedFontFactory:Lcom/sun/javafx/font/FontFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .line 257
    .end local v1    # "plc":Ljava/lang/Class;
    .end local v2    # "gpm":Ljava/lang/reflect/Method;
    .end local v3    # "plo":Ljava/lang/Object;
    .end local v4    # "gfm":Ljava/lang/reflect/Method;
    .end local v5    # "ffo":Ljava/lang/Object;
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontLoader;->installedFontFactory:Lcom/sun/javafx/font/FontFactory;

    move-object v0, v6

    goto :goto_0

    .line 255
    :catch_0
    move-exception v6

    move-object v1, v6

    goto :goto_1
.end method

.method public static getInstance()Lcom/sun/javafx/font/PrismFontLoader;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/sun/javafx/font/PrismFontLoader;->theInstance:Lcom/sun/javafx/font/PrismFontLoader;

    return-object v0
.end method

.method private loadEmbeddedFonts()V
    .locals 17

    .prologue
    .line 66
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    move-object v12, v0

    iget-boolean v12, v12, Lcom/sun/javafx/font/PrismFontLoader;->embeddedFontsLoaded:Z

    if-nez v12, :cond_6

    .line 67
    move-object v12, v0

    invoke-direct {v12}, Lcom/sun/javafx/font/PrismFontLoader;->getFontFactoryFromPipeline()Lcom/sun/javafx/font/FontFactory;

    move-result-object v12

    move-object v1, v12

    .line 68
    .local v1, "fontFactory":Lcom/sun/javafx/font/FontFactory;
    move-object v12, v1

    invoke-interface {v12}, Lcom/sun/javafx/font/FontFactory;->hasPermission()Z

    move-result v12

    if-nez v12, :cond_0

    .line 69
    move-object v12, v0

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/sun/javafx/font/PrismFontLoader;->embeddedFontsLoaded:Z

    .line 70
    .line 88
    .end local v1    # "fontFactory":Lcom/sun/javafx/font/FontFactory;
    :goto_0
    return-void

    .line 72
    .restart local v1    # "fontFactory":Lcom/sun/javafx/font/FontFactory;
    :cond_0
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/font/PrismFontLoader;->loadEmbeddedFontDefinitions()Ljava/util/Properties;

    move-result-object v12

    move-object v2, v12

    .line 73
    .local v2, "map":Ljava/util/Properties;
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v12

    move-object v3, v12

    .line 74
    .local v3, "names":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object v4, v12

    .line 75
    .local v4, "loader":Ljava/lang/ClassLoader;
    :goto_1
    move-object v12, v3

    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 76
    move-object v12, v3

    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v5, v12

    .line 77
    .local v5, "n":Ljava/lang/String;
    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 78
    .local v6, "p":Ljava/lang/String;
    move-object v12, v6

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 79
    move-object v12, v6

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 80
    move-object v12, v4

    move-object v13, v6

    :try_start_0
    invoke-virtual {v12, v13}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v12

    move-object v7, v12

    .local v7, "in":Ljava/io/InputStream;
    const/4 v12, 0x0

    move-object v8, v12

    .line 81
    move-object v12, v1

    move-object v13, v5

    move-object v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x1

    :try_start_1
    invoke-interface/range {v12 .. v16}, Lcom/sun/javafx/font/FontFactory;->loadEmbeddedFont(Ljava/lang/String;Ljava/io/InputStream;FZ)Lcom/sun/javafx/font/PGFont;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 82
    move-object v12, v7

    if-eqz v12, :cond_1

    move-object v12, v8

    if-eqz v12, :cond_2

    move-object v12, v7

    :try_start_2
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 83
    .line 85
    .end local v7    # "in":Ljava/io/InputStream;
    :cond_1
    :goto_2
    goto :goto_1

    .line 82
    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v12

    move-object v9, v12

    move-object v12, v8

    move-object v13, v9

    :try_start_3
    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    move-object v12, v7

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 80
    :catch_1
    move-exception v12

    move-object v9, v12

    move-object v12, v9

    move-object v8, v12

    move-object v12, v9

    :try_start_4
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 82
    :catchall_0
    move-exception v12

    move-object v10, v12

    move-object v12, v7

    if-eqz v12, :cond_3

    move-object v12, v8

    if-eqz v12, :cond_4

    move-object v12, v7

    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_3
    move-object v12, v10

    :try_start_6
    throw v12

    .end local v7    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v12

    move-object v7, v12

    goto :goto_2

    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_3
    move-exception v12

    move-object v11, v12

    move-object v12, v8

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    move-object v12, v7

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 86
    .end local v5    # "n":Ljava/lang/String;
    .end local v6    # "p":Ljava/lang/String;
    .end local v7    # "in":Ljava/io/InputStream;
    :cond_5
    move-object v12, v0

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/sun/javafx/font/PrismFontLoader;->embeddedFontsLoaded:Z

    .line 88
    .end local v1    # "fontFactory":Lcom/sun/javafx/font/FontFactory;
    .end local v2    # "map":Ljava/util/Properties;
    .end local v3    # "names":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    :cond_6
    goto/16 :goto_0
.end method


# virtual methods
.method public computeStringWidth(Ljava/lang/String;Ljavafx/scene/text/Font;)F
    .locals 6

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/text/Font;->impl_getNativeFont()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/font/PGFont;

    move-object v3, v4

    .line 234
    .local v3, "prismFont":Lcom/sun/javafx/font/PGFont;
    move-object v4, v3

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/font/PrismFontUtils;->computeStringWidth(Lcom/sun/javafx/font/PGFont;Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    return v0
.end method

.method public font(Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;F)Ljavafx/scene/text/Font;
    .locals 16

    .prologue
    .line 171
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    move-object/from16 v1, p1

    .local v1, "family":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "weight":Ljavafx/scene/text/FontWeight;
    move-object/from16 v3, p3

    .local v3, "posture":Ljavafx/scene/text/FontPosture;
    move/from16 v4, p4

    .local v4, "size":F
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/javafx/font/PrismFontLoader;->getFontFactoryFromPipeline()Lcom/sun/javafx/font/FontFactory;

    move-result-object v10

    move-object v5, v10

    .line 172
    .local v5, "fontFactory":Lcom/sun/javafx/font/FontFactory;
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/font/PrismFontLoader;->embeddedFontsLoaded:Z

    if-nez v10, :cond_0

    move-object v10, v5

    move-object v11, v1

    invoke-interface {v10, v11}, Lcom/sun/javafx/font/FontFactory;->isPlatformFont(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 173
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/javafx/font/PrismFontLoader;->loadEmbeddedFonts()V

    .line 178
    :cond_0
    move-object v10, v2

    if-eqz v10, :cond_1

    move-object v10, v2

    .line 179
    invoke-virtual {v10}, Ljavafx/scene/text/FontWeight;->ordinal()I

    move-result v10

    sget-object v11, Ljavafx/scene/text/FontWeight;->BOLD:Ljavafx/scene/text/FontWeight;

    invoke-virtual {v11}, Ljavafx/scene/text/FontWeight;->ordinal()I

    move-result v11

    if-lt v10, v11, :cond_1

    const/4 v10, 0x1

    :goto_0
    move v6, v10

    .line 180
    .local v6, "bold":Z
    move-object v10, v3

    sget-object v11, Ljavafx/scene/text/FontPosture;->ITALIC:Ljavafx/scene/text/FontPosture;

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_1
    move v7, v10

    .line 181
    .local v7, "italic":Z
    move-object v10, v5

    move-object v11, v1

    move v12, v6

    move v13, v7

    move v14, v4

    invoke-interface {v10, v11, v12, v13, v14}, Lcom/sun/javafx/font/FontFactory;->createFont(Ljava/lang/String;ZZF)Lcom/sun/javafx/font/PGFont;

    move-result-object v10

    move-object v8, v10

    .line 184
    .local v8, "prismFont":Lcom/sun/javafx/font/PGFont;
    move-object v10, v8

    move-object v11, v8

    invoke-interface {v11}, Lcom/sun/javafx/font/PGFont;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v8

    .line 185
    invoke-interface {v12}, Lcom/sun/javafx/font/PGFont;->getFamilyName()Ljava/lang/String;

    move-result-object v12

    move-object v13, v8

    .line 186
    invoke-interface {v13}, Lcom/sun/javafx/font/PGFont;->getStyleName()Ljava/lang/String;

    move-result-object v13

    move v14, v4

    float-to-double v14, v14

    .line 184
    invoke-static/range {v10 .. v15}, Ljavafx/scene/text/Font;->impl_NativeFont(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Ljavafx/scene/text/Font;

    move-result-object v10

    move-object v9, v10

    .line 187
    .local v9, "fxFont":Ljavafx/scene/text/Font;
    move-object v10, v9

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    return-object v0

    .line 179
    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "prismFont":Lcom/sun/javafx/font/PGFont;
    .end local v9    # "fxFont":Ljavafx/scene/text/Font;
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 180
    .restart local v6    # "bold":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public getFamilies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismFontLoader;->loadEmbeddedFonts()V

    .line 121
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismFontLoader;->getFontFactoryFromPipeline()Lcom/sun/javafx/font/FontFactory;

    move-result-object v1

    .line 122
    invoke-interface {v1}, Lcom/sun/javafx/font/FontFactory;->getFontFamilyNames()[Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    return-object v0
.end method

.method public getFontMetrics(Ljavafx/scene/text/Font;)Lcom/sun/javafx/tk/FontMetrics;
    .locals 17

    .prologue
    .line 215
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    move-object/from16 v1, p1

    .local v1, "font":Ljavafx/scene/text/Font;
    move-object v10, v1

    if-eqz v10, :cond_0

    .line 216
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/text/Font;->impl_getNativeFont()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/font/PGFont;

    move-object v2, v10

    .line 217
    .local v2, "prismFont":Lcom/sun/javafx/font/PGFont;
    move-object v10, v2

    invoke-static {v10}, Lcom/sun/javafx/font/PrismFontUtils;->getFontMetrics(Lcom/sun/javafx/font/PGFont;)Lcom/sun/javafx/font/Metrics;

    move-result-object v10

    move-object v3, v10

    .line 219
    .local v3, "metrics":Lcom/sun/javafx/font/Metrics;
    move-object v10, v3

    invoke-interface {v10}, Lcom/sun/javafx/font/Metrics;->getAscent()F

    move-result v10

    neg-float v10, v10

    move v4, v10

    .line 220
    .local v4, "maxAscent":F
    move-object v10, v3

    invoke-interface {v10}, Lcom/sun/javafx/font/Metrics;->getAscent()F

    move-result v10

    neg-float v10, v10

    move v5, v10

    .line 221
    .local v5, "ascent":F
    move-object v10, v3

    invoke-interface {v10}, Lcom/sun/javafx/font/Metrics;->getXHeight()F

    move-result v10

    move v6, v10

    .line 222
    .local v6, "xheight":F
    move-object v10, v3

    invoke-interface {v10}, Lcom/sun/javafx/font/Metrics;->getDescent()F

    move-result v10

    move v7, v10

    .line 224
    .local v7, "descent":F
    move-object v10, v3

    invoke-interface {v10}, Lcom/sun/javafx/font/Metrics;->getDescent()F

    move-result v10

    move v8, v10

    .line 225
    .local v8, "maxDescent":F
    move-object v10, v3

    invoke-interface {v10}, Lcom/sun/javafx/font/Metrics;->getLineGap()F

    move-result v10

    move v9, v10

    .line 226
    .local v9, "leading":F
    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    move v15, v9

    move-object/from16 v16, v1

    invoke-static/range {v10 .. v16}, Lcom/sun/javafx/tk/FontMetrics;->impl_createFontMetrics(FFFFFFLjavafx/scene/text/Font;)Lcom/sun/javafx/tk/FontMetrics;

    move-result-object v10

    move-object v0, v10

    .line 228
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    .end local v2    # "prismFont":Lcom/sun/javafx/font/PGFont;
    .end local v3    # "metrics":Lcom/sun/javafx/font/Metrics;
    .end local v4    # "maxAscent":F
    .end local v5    # "ascent":F
    .end local v6    # "xheight":F
    .end local v7    # "descent":F
    .end local v8    # "maxDescent":F
    .end local v9    # "leading":F
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    :cond_0
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0
.end method

.method public getFontNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismFontLoader;->loadEmbeddedFonts()V

    .line 133
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismFontLoader;->getFontFactoryFromPipeline()Lcom/sun/javafx/font/FontFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/javafx/font/FontFactory;->getFontFullNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    return-object v0
.end method

.method public getFontNames(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    move-object v1, p1

    .local v1, "family":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/font/PrismFontLoader;->loadEmbeddedFonts()V

    .line 145
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/font/PrismFontLoader;->getFontFactoryFromPipeline()Lcom/sun/javafx/font/FontFactory;

    move-result-object v2

    move-object v3, v1

    .line 146
    invoke-interface {v2, v3}, Lcom/sun/javafx/font/FontFactory;->getFontFullNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    return-object v0
.end method

.method public getSystemFontSize()F
    .locals 2

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getSystemFontSize()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    return v0
.end method

.method loadEmbeddedFontDefinitions()Ljava/util/Properties;
    .locals 12

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    new-instance v9, Ljava/util/Properties;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    move-object v1, v9

    .line 52
    .local v1, "map":Ljava/util/Properties;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object v2, v9

    .line 53
    .local v2, "loader":Ljava/lang/ClassLoader;
    move-object v9, v2

    const-string v10, "META-INF/fonts.mf"

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    move-object v3, v9

    .line 54
    .local v3, "u":Ljava/net/URL;
    move-object v9, v3

    if-nez v9, :cond_0

    move-object v9, v1

    move-object v0, v9

    .line 62
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    :goto_0
    return-object v0

    .line 57
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    :cond_0
    move-object v9, v3

    :try_start_0
    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    move-object v4, v9

    .local v4, "in":Ljava/io/InputStream;
    const/4 v9, 0x0

    move-object v5, v9

    .line 58
    move-object v9, v1

    move-object v10, v4

    :try_start_1
    invoke-virtual {v9, v10}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    move-object v9, v4

    if-eqz v9, :cond_1

    move-object v9, v5

    if-eqz v9, :cond_2

    move-object v9, v4

    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 61
    .line 62
    .end local v4    # "in":Ljava/io/InputStream;
    :cond_1
    :goto_1
    move-object v9, v1

    move-object v0, v9

    goto :goto_0

    .line 59
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    move-object v6, v9

    move-object v9, v5

    move-object v10, v6

    :try_start_3
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 57
    :catch_1
    move-exception v9

    move-object v6, v9

    move-object v9, v6

    move-object v5, v9

    move-object v9, v6

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    :catchall_0
    move-exception v9

    move-object v7, v9

    move-object v9, v4

    if-eqz v9, :cond_3

    move-object v9, v5

    if-eqz v9, :cond_4

    move-object v9, v4

    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_2
    move-object v9, v7

    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .end local v4    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v9

    move-object v4, v9

    .line 60
    .local v4, "e":Ljava/lang/Exception;
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 59
    .local v4, "in":Ljava/io/InputStream;
    :catch_3
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    move-object v10, v8

    :try_start_7
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2
.end method

.method public loadFont(Ljava/io/InputStream;D)Ljavafx/scene/text/Font;
    .locals 12

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-wide v2, p2

    .local v2, "size":D
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/font/PrismFontLoader;->getFontFactoryFromPipeline()Lcom/sun/javafx/font/FontFactory;

    move-result-object v6

    move-object v4, v6

    .line 92
    .local v4, "factory":Lcom/sun/javafx/font/FontFactory;
    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v1

    move-wide v9, v2

    double-to-float v9, v9

    const/4 v10, 0x1

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/sun/javafx/font/FontFactory;->loadEmbeddedFont(Ljava/lang/String;Ljava/io/InputStream;FZ)Lcom/sun/javafx/font/PGFont;

    move-result-object v6

    move-object v5, v6

    .line 93
    .local v5, "font":Lcom/sun/javafx/font/PGFont;
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/sun/javafx/font/PrismFontLoader;->createFont(Lcom/sun/javafx/font/PGFont;)Ljavafx/scene/text/Font;

    move-result-object v6

    move-object v0, v6

    .line 94
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public loadFont(Ljava/lang/String;D)Ljavafx/scene/text/Font;
    .locals 12

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    move-object v1, p1

    .local v1, "path":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "size":D
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/font/PrismFontLoader;->getFontFactoryFromPipeline()Lcom/sun/javafx/font/FontFactory;

    move-result-object v6

    move-object v4, v6

    .line 99
    .local v4, "factory":Lcom/sun/javafx/font/FontFactory;
    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v1

    move-wide v9, v2

    double-to-float v9, v9

    const/4 v10, 0x1

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/sun/javafx/font/FontFactory;->loadEmbeddedFont(Ljava/lang/String;Ljava/lang/String;FZ)Lcom/sun/javafx/font/PGFont;

    move-result-object v6

    move-object v5, v6

    .line 100
    .local v5, "font":Lcom/sun/javafx/font/PGFont;
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/sun/javafx/font/PrismFontLoader;->createFont(Lcom/sun/javafx/font/PGFont;)Ljavafx/scene/text/Font;

    move-result-object v6

    move-object v0, v6

    .line 101
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontLoader;
    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public loadFont(Ljavafx/scene/text/Font;)V
    .locals 13

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontLoader;
    move-object v1, p1

    .local v1, "font":Ljavafx/scene/text/Font;
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/font/PrismFontLoader;->getFontFactoryFromPipeline()Lcom/sun/javafx/font/FontFactory;

    move-result-object v8

    move-object v2, v8

    .line 195
    .local v2, "fontFactory":Lcom/sun/javafx/font/FontFactory;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/text/Font;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 196
    .local v3, "fullName":Ljava/lang/String;
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/font/PrismFontLoader;->embeddedFontsLoaded:Z

    if-nez v8, :cond_0

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v8, v9}, Lcom/sun/javafx/font/FontFactory;->isPlatformFont(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 197
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/font/PrismFontLoader;->loadEmbeddedFonts()V

    .line 205
    :cond_0
    move-object v8, v2

    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v10

    double-to-float v10, v10

    invoke-interface {v8, v9, v10}, Lcom/sun/javafx/font/FontFactory;->createFont(Ljava/lang/String;F)Lcom/sun/javafx/font/PGFont;

    move-result-object v8

    move-object v4, v8

    .line 208
    .local v4, "prismFont":Lcom/sun/javafx/font/PGFont;
    move-object v8, v4

    invoke-interface {v8}, Lcom/sun/javafx/font/PGFont;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 209
    .local v5, "name":Ljava/lang/String;
    move-object v8, v4

    invoke-interface {v8}, Lcom/sun/javafx/font/PGFont;->getFamilyName()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 210
    .local v6, "family":Ljava/lang/String;
    move-object v8, v4

    invoke-interface {v8}, Lcom/sun/javafx/font/PGFont;->getStyleName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 211
    .local v7, "style":Ljava/lang/String;
    move-object v8, v1

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    move-object v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/text/Font;->impl_setNativeFont(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method
