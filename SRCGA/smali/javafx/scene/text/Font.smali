.class public final Ljavafx/scene/text/Font;
.super Ljava/lang/Object;
.source "Font.java"


# static fields
.field private static DEFAULT:Ljavafx/scene/text/Font; = null

.field private static final DEFAULT_FAMILY:Ljava/lang/String; = "System"

.field private static final DEFAULT_FULLNAME:Ljava/lang/String; = "System Regular"

.field private static defaultSystemFontSize:F


# instance fields
.field private family:Ljava/lang/String;

.field private hash:I

.field private name:Ljava/lang/String;

.field private nativeFont:Ljava/lang/Object;

.field private size:D

.field private style:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Ljavafx/scene/text/Font;->defaultSystemFontSize:F

    return-void
.end method

.method public constructor <init>(D)V
    .locals 9
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "size"
        .end annotation
    .end param

    .prologue
    .line 298
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Font;
    move-wide v2, p1

    .local v2, "size":D
    move-object v4, v1

    const/4 v5, 0x0

    move-wide v6, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/text/Font;-><init>(Ljava/lang/String;D)V

    .line 299
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 11

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Font;
    move-object v1, p1

    .local v1, "f":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "family":Ljava/lang/String;
    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move-object v4, p4

    .local v4, "style":Ljava/lang/String;
    move-wide/from16 v5, p5

    .local v5, "size":D
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 288
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Ljavafx/scene/text/Font;->hash:I

    .line 332
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Ljavafx/scene/text/Font;->nativeFont:Ljava/lang/Object;

    .line 333
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Ljavafx/scene/text/Font;->family:Ljava/lang/String;

    .line 334
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Ljavafx/scene/text/Font;->name:Ljava/lang/String;

    .line 335
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Ljavafx/scene/text/Font;->style:Ljava/lang/String;

    .line 336
    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Ljavafx/scene/text/Font;->size:D

    .line 337
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;D)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "name"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "size"
        .end annotation
    .end param

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Font;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "size":D
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 288
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Ljavafx/scene/text/Font;->hash:I

    .line 308
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/text/Font;->name:Ljava/lang/String;

    .line 309
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/text/Font;->size:D

    .line 311
    move-object v4, v1

    if-eqz v4, :cond_0

    const-string v4, ""

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v4, v0

    const-string v5, "System Regular"

    iput-object v5, v4, Ljavafx/scene/text/Font;->name:Ljava/lang/String;

    .line 312
    :cond_1
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    move-object v4, v0

    invoke-static {}, Ljavafx/scene/text/Font;->getDefaultSystemFontSize()F

    move-result v5

    float-to-double v5, v5

    iput-wide v5, v4, Ljavafx/scene/text/Font;->size:D

    .line 319
    :cond_2
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->getFontLoader()Lcom/sun/javafx/tk/FontLoader;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/FontLoader;->loadFont(Ljavafx/scene/text/Font;)V

    .line 320
    return-void
.end method

.method public static font(D)Ljavafx/scene/text/Font;
    .locals 8

    .prologue
    .line 228
    move-wide v0, p0

    .local v0, "size":D
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide v5, v0

    invoke-static {v2, v3, v4, v5, v6}, Ljavafx/scene/text/Font;->font(Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "size":D
    return-object v0
.end method

.method public static font(Ljava/lang/String;)Ljavafx/scene/text/Font;
    .locals 6

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "family":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-static {v1, v2, v3, v4, v5}, Ljavafx/scene/text/Font;->font(Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "family":Ljava/lang/String;
    return-object v0
.end method

.method public static font(Ljava/lang/String;D)Ljavafx/scene/text/Font;
    .locals 9

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "family":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "size":D
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v6, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/text/Font;->font(Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "family":Ljava/lang/String;
    return-object v0
.end method

.method public static font(Ljava/lang/String;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;
    .locals 10

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "family":Ljava/lang/String;
    move-object v1, p1

    .local v1, "posture":Ljavafx/scene/text/FontPosture;
    move-wide v2, p2

    .local v2, "size":D
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    move-wide v7, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/scene/text/Font;->font(Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "family":Ljava/lang/String;
    return-object v0
.end method

.method public static font(Ljava/lang/String;Ljavafx/scene/text/FontWeight;D)Ljavafx/scene/text/Font;
    .locals 10

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "family":Ljava/lang/String;
    move-object v1, p1

    .local v1, "weight":Ljavafx/scene/text/FontWeight;
    move-wide v2, p2

    .local v2, "size":D
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-wide v7, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/scene/text/Font;->font(Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "family":Ljava/lang/String;
    return-object v0
.end method

.method public static font(Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;
    .locals 15

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "family":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "weight":Ljavafx/scene/text/FontWeight;
    move-object/from16 v2, p2

    .local v2, "posture":Ljavafx/scene/text/FontPosture;
    move-wide/from16 v3, p3

    .local v3, "size":D
    move-object v8, v0

    if-eqz v8, :cond_0

    const-string v8, ""

    move-object v9, v0

    .line 146
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const-string v8, "System"

    :goto_0
    move-object v5, v8

    .line 147
    .local v5, "fam":Ljava/lang/String;
    move-wide v8, v3

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    invoke-static {}, Ljavafx/scene/text/Font;->getDefaultSystemFontSize()F

    move-result v8

    float-to-double v8, v8

    :goto_1
    move-wide v6, v8

    .line 148
    .local v6, "sz":D
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/tk/Toolkit;->getFontLoader()Lcom/sun/javafx/tk/FontLoader;

    move-result-object v8

    move-object v9, v5

    move-object v10, v1

    move-object v11, v2

    move-wide v12, v6

    double-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/javafx/tk/FontLoader;->font(Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;F)Ljavafx/scene/text/Font;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "family":Ljava/lang/String;
    return-object v0

    .line 146
    .end local v5    # "fam":Ljava/lang/String;
    .end local v6    # "sz":D
    .restart local v0    # "family":Ljava/lang/String;
    :cond_1
    move-object v8, v0

    goto :goto_0

    .line 147
    .restart local v5    # "fam":Ljava/lang/String;
    :cond_2
    move-wide v8, v3

    goto :goto_1
.end method

.method public static declared-synchronized getDefault()Ljavafx/scene/text/Font;
    .locals 8

    .prologue
    .line 85
    const-class v6, Ljavafx/scene/text/Font;

    monitor-enter v6

    :try_start_0
    sget-object v1, Ljavafx/scene/text/Font;->DEFAULT:Ljavafx/scene/text/Font;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljavafx/scene/text/Font;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "System Regular"

    invoke-static {}, Ljavafx/scene/text/Font;->getDefaultSystemFontSize()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/text/Font;-><init>(Ljava/lang/String;D)V

    sput-object v1, Ljavafx/scene/text/Font;->DEFAULT:Ljavafx/scene/text/Font;

    .line 88
    :cond_0
    sget-object v1, Ljavafx/scene/text/Font;->DEFAULT:Ljavafx/scene/text/Font;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v1

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method private static getDefaultSystemFontSize()F
    .locals 2

    .prologue
    .line 69
    sget v0, Ljavafx/scene/text/Font;->defaultSystemFontSize:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->getFontLoader()Lcom/sun/javafx/tk/FontLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/FontLoader;->getSystemFontSize()F

    move-result v0

    sput v0, Ljavafx/scene/text/Font;->defaultSystemFontSize:F

    .line 73
    :cond_0
    sget v0, Ljavafx/scene/text/Font;->defaultSystemFontSize:F

    return v0
.end method

.method public static getFamilies()Ljava/util/List;
    .locals 1
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
    .line 99
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->getFontLoader()Lcom/sun/javafx/tk/FontLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/FontLoader;->getFamilies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFontNames()Ljava/util/List;
    .locals 1
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
    .line 110
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->getFontLoader()Lcom/sun/javafx/tk/FontLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/FontLoader;->getFontNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFontNames(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    .line 122
    move-object v0, p0

    .local v0, "family":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->getFontLoader()Lcom/sun/javafx/tk/FontLoader;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/FontLoader;->getFontNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "family":Ljava/lang/String;
    return-object v0
.end method

.method public static impl_NativeFont(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Ljavafx/scene/text/Font;
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    move-object/from16 v0, p0

    .local v0, "f":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "family":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "style":Ljava/lang/String;
    move-wide/from16 v4, p4

    .local v4, "size":D
    new-instance v7, Ljavafx/scene/text/Font;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    move-object v10, v2

    move-object v11, v1

    move-object v12, v3

    move-wide v13, v4

    invoke-direct/range {v8 .. v14}, Ljavafx/scene/text/Font;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    move-object v6, v7

    .line 531
    .local v6, "retFont":Ljavafx/scene/text/Font;
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "f":Ljava/lang/Object;
    return-object v0
.end method

.method public static loadFont(Ljava/io/InputStream;D)Ljavafx/scene/text/Font;
    .locals 9

    .prologue
    .line 452
    move-object v1, p0

    .local v1, "in":Ljava/io/InputStream;
    move-wide v2, p1

    .local v2, "size":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 453
    invoke-static {}, Ljavafx/scene/text/Font;->getDefaultSystemFontSize()F

    move-result v4

    float-to-double v4, v4

    move-wide v2, v4

    .line 455
    :cond_0
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->getFontLoader()Lcom/sun/javafx/tk/FontLoader;

    move-result-object v4

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/tk/FontLoader;->loadFont(Ljava/io/InputStream;D)Ljavafx/scene/text/Font;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "in":Ljava/io/InputStream;
    return-object v1
.end method

.method public static loadFont(Ljava/lang/String;D)Ljavafx/scene/text/Font;
    .locals 17

    .prologue
    .line 373
    move-object/from16 v0, p0

    .local v0, "urlStr":Ljava/lang/String;
    move-wide/from16 v1, p1

    .local v1, "size":D
    const/4 v12, 0x0

    move-object v3, v12

    .line 375
    .local v3, "url":Ljava/net/URL;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v12

    .line 378
    .line 379
    move-wide v12, v1

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_0

    .line 380
    invoke-static {}, Ljavafx/scene/text/Font;->getDefaultSystemFontSize()F

    move-result v12

    float-to-double v12, v12

    move-wide v1, v12

    .line 384
    :cond_0
    move-object v12, v3

    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    const-string v13, "file"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 385
    move-object v12, v3

    invoke-virtual {v12}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 389
    .local v4, "path":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v4

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 391
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v12

    move-object v5, v12

    .line 392
    .local v5, "sm":Ljava/lang/SecurityManager;
    move-object v12, v5

    if-eqz v12, :cond_1

    .line 393
    new-instance v12, Ljava/io/FilePermission;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v4

    const-string v15, "read"

    invoke-direct {v13, v14, v15}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v12

    .line 395
    .local v6, "filePermission":Ljava/io/FilePermission;
    move-object v12, v5

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 399
    .line 400
    .end local v6    # "filePermission":Ljava/io/FilePermission;
    :cond_1
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/javafx/tk/Toolkit;->getFontLoader()Lcom/sun/javafx/tk/FontLoader;

    move-result-object v12

    move-object v13, v4

    move-wide v14, v1

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/javafx/tk/FontLoader;->loadFont(Ljava/lang/String;D)Ljavafx/scene/text/Font;

    move-result-object v12

    move-object v0, v12

    .line 419
    .end local v0    # "urlStr":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "sm":Ljava/lang/SecurityManager;
    :goto_0
    return-object v0

    .line 376
    .restart local v0    # "urlStr":Ljava/lang/String;
    :catch_0
    move-exception v12

    move-object v4, v12

    .line 377
    .local v4, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 397
    .local v4, "path":Ljava/lang/String;
    :catch_1
    move-exception v12

    move-object v5, v12

    .line 398
    .local v5, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 402
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v12, 0x0

    move-object v4, v12

    .line 403
    .local v4, "font":Ljavafx/scene/text/Font;
    const/4 v12, 0x0

    move-object v5, v12

    .line 404
    .local v5, "connection":Ljava/net/URLConnection;
    const/4 v12, 0x0

    move-object v6, v12

    .line 406
    .local v6, "in":Ljava/io/InputStream;
    move-object v12, v3

    :try_start_2
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v5, v12

    .line 407
    move-object v12, v5

    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    move-object v6, v12

    .line 408
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/javafx/tk/Toolkit;->getFontLoader()Lcom/sun/javafx/tk/FontLoader;

    move-result-object v12

    move-object v13, v6

    move-wide v14, v1

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/javafx/tk/FontLoader;->loadFont(Ljava/io/InputStream;D)Ljavafx/scene/text/Font;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    move-object v4, v12

    .line 413
    move-object v12, v6

    if-eqz v12, :cond_3

    .line 414
    move-object v12, v6

    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 417
    .line 419
    :cond_3
    :goto_1
    move-object v12, v4

    move-object v0, v12

    goto :goto_0

    .line 416
    :catch_2
    move-exception v12

    move-object v7, v12

    .line 418
    goto :goto_1

    .line 409
    :catch_3
    move-exception v12

    move-object v7, v12

    .line 410
    .local v7, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    move-object v8, v12

    .line 413
    move-object v12, v6

    if-eqz v12, :cond_4

    .line 414
    move-object v12, v6

    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 417
    :cond_4
    :goto_2
    move-object v12, v8

    move-object v0, v12

    goto :goto_0

    .line 416
    :catch_4
    move-exception v12

    move-object v9, v12

    goto :goto_2

    .line 412
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    move-object v10, v12

    .line 413
    move-object v12, v6

    if-eqz v12, :cond_5

    .line 414
    move-object v12, v6

    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 417
    :cond_5
    :goto_3
    move-object v12, v10

    throw v12

    .line 416
    :catch_5
    move-exception v12

    move-object v11, v12

    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 479
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Font;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 485
    .end local v1    # "this":Ljavafx/scene/text/Font;
    :goto_0
    return v1

    .line 480
    .restart local v1    # "this":Ljavafx/scene/text/Font;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/text/Font;

    if-eqz v4, :cond_4

    .line 481
    move-object v4, v2

    check-cast v4, Ljavafx/scene/text/Font;

    move-object v3, v4

    .line 482
    .local v3, "other":Ljavafx/scene/text/Font;
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/text/Font;->name:Ljava/lang/String;

    if-nez v4, :cond_2

    move-object v4, v3

    iget-object v4, v4, Ljavafx/scene/text/Font;->name:Ljava/lang/String;

    if-nez v4, :cond_3

    :cond_1
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/text/Font;->size:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/scene/text/Font;->size:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_2
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/text/Font;->name:Ljava/lang/String;

    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/text/Font;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 485
    .end local v3    # "other":Ljavafx/scene/text/Font;
    :cond_4
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public final getFamily()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Font;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Font;->family:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Font;
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Font;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Font;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Font;
    return-object v0
.end method

.method public final getSize()D
    .locals 3

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Font;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/text/Font;->size:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Font;
    return-wide v0
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Font;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Font;->style:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Font;
    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 493
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Font;
    move-object v4, v1

    iget v4, v4, Ljavafx/scene/text/Font;->hash:I

    if-nez v4, :cond_0

    .line 494
    const-wide/16 v4, 0x11

    move-wide v2, v4

    .line 495
    .local v2, "bits":J
    const-wide/16 v4, 0x25

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/text/Font;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 496
    const-wide/16 v4, 0x25

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/text/Font;->size:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 497
    move-object v4, v1

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    shr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Ljavafx/scene/text/Font;->hash:I

    .line 499
    .end local v2    # "bits":J
    :cond_0
    move-object v4, v1

    iget v4, v4, Ljavafx/scene/text/Font;->hash:I

    move v1, v4

    .end local v1    # "this":Ljavafx/scene/text/Font;
    return v1
.end method

.method public impl_getNativeFont()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Font;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Font;->nativeFont:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Font;
    return-object v0
.end method

.method public impl_setNativeFont(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Font;
    move-object v1, p1

    .local v1, "f":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "nam":Ljava/lang/String;
    move-object v3, p3

    .local v3, "fam":Ljava/lang/String;
    move-object v4, p4

    .local v4, "styl":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/text/Font;->nativeFont:Ljava/lang/Object;

    .line 518
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/scene/text/Font;->name:Ljava/lang/String;

    .line 519
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/text/Font;->family:Ljava/lang/String;

    .line 520
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/text/Font;->style:Ljava/lang/String;

    .line 521
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 464
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Font;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Font[name="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 465
    .local v2, "builder":Ljava/lang/StringBuilder;
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/text/Font;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v2, v3

    .line 466
    move-object v3, v2

    const-string v4, ", family="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/text/Font;->family:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v2, v3

    .line 467
    move-object v3, v2

    const-string v4, ", style="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/text/Font;->style:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v2, v3

    .line 468
    move-object v3, v2

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/text/Font;->size:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v2, v3

    .line 469
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v2, v3

    .line 470
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/text/Font;
    return-object v1
.end method
