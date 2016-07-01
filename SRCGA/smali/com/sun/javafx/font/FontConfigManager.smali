.class Lcom/sun/javafx/font/FontConfigManager;
.super Ljava/lang/Object;
.source "FontConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;,
        Lcom/sun/javafx/font/FontConfigManager$FcCompFont;,
        Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;
    }
.end annotation


# static fields
.field static debugFonts:Z

.field private static defaultFontFile:Ljava/lang/String;

.field static fontConfigFailed:Z

.field private static fontConfigFonts:[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

.field private static final fontConfigNames:[Ljava/lang/String;

.field static useEmbeddedFontSupport:Z

.field static useFontConfig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/font/FontConfigManager;->debugFonts:Z

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/javafx/font/FontConfigManager;->useFontConfig:Z

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFailed:Z

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/font/FontConfigManager;->useEmbeddedFontSupport:Z

    .line 47
    invoke-static {}, Lcom/sun/javafx/font/FontConfigManager$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "sans:regular:roman"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "sans:bold:roman"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "sans:regular:italic"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "sans:bold:italic"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "serif:regular:roman"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "serif:bold:roman"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "serif:regular:italic"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "serif:bold:italic"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string v3, "monospace:regular:roman"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string v3, "monospace:bold:roman"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string v3, "monospace:regular:italic"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string v3, "monospace:bold:italic"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/font/FontConfigManager;->fontConfigNames:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontConfigManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/font/FontConfigManager;->lambda$static$237()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultFontPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    sget-object v0, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFonts:[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFailed:Z

    if-nez v0, :cond_0

    .line 303
    const-string v0, "System"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/javafx/font/FontConfigManager;->getFontConfigFont(Ljava/lang/String;ZZ)Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    move-result-object v0

    .line 305
    :cond_0
    sget-object v0, Lcom/sun/javafx/font/FontConfigManager;->defaultFontFile:Ljava/lang/String;

    return-object v0
.end method

.method private static getFCLocaleStr()Ljava/lang/String;
    .locals 6

    .prologue
    .line 118
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object v0, v3

    .line 119
    .local v0, "l":Ljava/util/Locale;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 120
    .local v1, "localeStr":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 121
    .local v2, "country":Ljava/lang/String;
    move-object v3, v2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 124
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "l":Ljava/util/Locale;
    return-object v0
.end method

.method public static getFileNames(Lcom/sun/javafx/font/FontConfigManager$FcCompFont;Z)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/font/FontConfigManager$FcCompFont;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "font":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    move v1, p1

    .local v1, "fallBacksOnly":Z
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 313
    .local v2, "fileList":Ljava/util/ArrayList;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->allFonts:[Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    if-eqz v5, :cond_1

    .line 314
    move v5, v1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 315
    .local v3, "start":I
    move v5, v3

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->allFonts:[Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 316
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->allFonts:[Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    move v7, v4

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 315
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 314
    .end local v3    # "start":I
    .end local v4    # "i":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 319
    :cond_1
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "font":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    return-object v0
.end method

.method private static native getFontConfig(Ljava/lang/String;[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;Z)Z
.end method

.method public static getFontConfigFont(Ljava/lang/String;ZZ)Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    .locals 11

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "fxFamilyName":Ljava/lang/String;
    move v1, p1

    .local v1, "bold":Z
    move v2, p2

    .local v2, "italic":Z
    invoke-static {}, Lcom/sun/javafx/font/FontConfigManager;->initFontConfigLogFonts()V

    .line 269
    sget-object v7, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFonts:[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    if-nez v7, :cond_0

    .line 270
    const/4 v7, 0x0

    move-object v0, v7

    .line 296
    .end local v0    # "fxFamilyName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 273
    .restart local v0    # "fxFamilyName":Ljava/lang/String;
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/javafx/font/FontConfigManager;->mapFxToFcLogicalFamilyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 274
    .local v3, "name":Ljava/lang/String;
    move v7, v1

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_1
    move v4, v7

    .line 275
    .local v4, "style":I
    move v7, v2

    if-eqz v7, :cond_1

    .line 276
    add-int/lit8 v4, v4, 0x2

    .line 279
    :cond_1
    const/4 v7, 0x0

    move-object v5, v7

    .line 280
    .local v5, "fcInfo":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_2
    move v7, v6

    sget-object v8, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFonts:[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    array-length v8, v8

    if-ge v7, v8, :cond_2

    .line 281
    move-object v7, v3

    sget-object v8, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFonts:[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    move v9, v6

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->fcFamily:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v4

    sget-object v8, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFonts:[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    move v9, v6

    aget-object v8, v8, v9

    iget v8, v8, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->style:I

    if-ne v7, v8, :cond_6

    .line 283
    sget-object v7, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFonts:[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    move v8, v6

    aget-object v7, v7, v8

    move-object v5, v7

    .line 287
    :cond_2
    move-object v7, v5

    if-nez v7, :cond_3

    .line 288
    sget-object v7, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFonts:[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v5, v7

    .line 291
    :cond_3
    sget-boolean v7, Lcom/sun/javafx/font/FontConfigManager;->debugFonts:Z

    if-eqz v7, :cond_4

    .line 292
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FC name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " style="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " uses "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    iget-object v9, v9, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->firstFont:Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    iget-object v9, v9, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->fullName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    iget-object v9, v9, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->firstFont:Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    iget-object v9, v9, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    :cond_4
    move-object v7, v5

    move-object v0, v7

    goto/16 :goto_0

    .line 274
    .end local v4    # "style":I
    .end local v5    # "fcInfo":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    .end local v6    # "i":I
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 280
    .restart local v4    # "style":I
    .restart local v5    # "fcInfo":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    .restart local v6    # "i":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private static getFontConfigNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/sun/javafx/font/FontConfigManager;->fontConfigNames:[Ljava/lang/String;

    return-object v0
.end method

.method public static getFontNames(Lcom/sun/javafx/font/FontConfigManager$FcCompFont;Z)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/font/FontConfigManager$FcCompFont;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "font":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    move v1, p1

    .local v1, "fallBacksOnly":Z
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 327
    .local v2, "fontList":Ljava/util/ArrayList;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->allFonts:[Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    if-eqz v5, :cond_1

    .line 328
    move v5, v1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 329
    .local v3, "start":I
    move v5, v3

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->allFonts:[Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 330
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->allFonts:[Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    move v7, v4

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 329
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 328
    .end local v3    # "start":I
    .end local v4    # "i":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 333
    :cond_1
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "font":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    return-object v0
.end method

.method private static declared-synchronized initFontConfigLogFonts()V
    .locals 20

    .prologue
    .line 136
    const-class v18, Lcom/sun/javafx/font/FontConfigManager;

    monitor-enter v18

    :try_start_0
    sget-object v12, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFonts:[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    if-nez v12, :cond_0

    sget-boolean v12, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_1

    .line 137
    .line 224
    .local v0, "t0":J
    .local v2, "fontConfigNames":[Ljava/lang/String;
    .local v3, "fontArr":[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    .local v4, "foundFontConfig":Z
    .local v5, "anyFont":Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;
    :cond_0
    :goto_0
    monitor-exit v18

    return-void

    .line 140
    .end local v0    # "t0":J
    .end local v2    # "fontConfigNames":[Ljava/lang/String;
    .end local v3    # "fontArr":[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    .end local v4    # "foundFontConfig":Z
    .end local v5    # "anyFont":Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;
    :cond_1
    const-wide/16 v12, 0x0

    move-wide v0, v12

    .line 141
    .restart local v0    # "t0":J
    :try_start_1
    sget-boolean v12, Lcom/sun/javafx/font/FontConfigManager;->debugFonts:Z

    if-eqz v12, :cond_2

    .line 142
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    move-wide v0, v12

    .line 145
    :cond_2
    invoke-static {}, Lcom/sun/javafx/font/FontConfigManager;->getFontConfigNames()[Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    .line 146
    .restart local v2    # "fontConfigNames":[Ljava/lang/String;
    move-object v12, v2

    array-length v12, v12

    new-array v12, v12, [Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    move-object v3, v12

    .line 148
    .restart local v3    # "fontArr":[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    const/4 v12, 0x0

    move v4, v12

    .local v4, "i":I
    :goto_1
    move v12, v4

    move-object v13, v3

    array-length v13, v13

    if-ge v12, v13, :cond_3

    .line 149
    move-object v12, v3

    move v13, v4

    new-instance v14, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;-><init>()V

    aput-object v14, v12, v13

    .line 150
    move-object v12, v3

    move v13, v4

    aget-object v12, v12, v13

    move-object v13, v2

    move v14, v4

    aget-object v13, v13, v14

    iput-object v13, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->fcName:Ljava/lang/String;

    .line 151
    move-object v12, v3

    move v13, v4

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->fcName:Ljava/lang/String;

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    move v5, v12

    .line 152
    .local v5, "colonPos":I
    move-object v12, v3

    move v13, v4

    aget-object v12, v12, v13

    move-object v13, v3

    move v14, v4

    aget-object v13, v13, v14

    iget-object v13, v13, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->fcName:Ljava/lang/String;

    const/4 v14, 0x0

    move v15, v5

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->fcFamily:Ljava/lang/String;

    .line 153
    move-object v12, v3

    move v13, v4

    aget-object v12, v12, v13

    move v13, v4

    const/4 v14, 0x4

    rem-int/lit8 v13, v13, 0x4

    iput v13, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->style:I

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 156
    .end local v5    # "colonPos":I
    :cond_3
    const/4 v12, 0x0

    move v4, v12

    .line 157
    .local v4, "foundFontConfig":Z
    sget-boolean v12, Lcom/sun/javafx/font/FontConfigManager;->useFontConfig:Z

    if-eqz v12, :cond_9

    .line 158
    invoke-static {}, Lcom/sun/javafx/font/FontConfigManager;->getFCLocaleStr()Ljava/lang/String;

    move-result-object v12

    move-object v13, v3

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/sun/javafx/font/FontConfigManager;->getFontConfig(Ljava/lang/String;[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;Z)Z

    move-result v12

    move v4, v12

    .line 165
    :cond_4
    :goto_2
    sget-boolean v12, Lcom/sun/javafx/font/FontConfigManager;->useEmbeddedFontSupport:Z

    if-nez v12, :cond_5

    move v12, v4

    if-nez v12, :cond_6

    .line 168
    :cond_5
    move-object v12, v3

    invoke-static {v12}, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->initLogicalFonts([Lcom/sun/javafx/font/FontConfigManager$FcCompFont;)V

    .line 170
    :cond_6
    const/4 v12, 0x0

    move-object v5, v12

    .line 172
    .local v5, "anyFont":Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;
    const/4 v12, 0x0

    move v6, v12

    .local v6, "i":I
    :goto_3
    move v12, v6

    move-object v13, v3

    array-length v13, v13

    if-ge v12, v13, :cond_b

    .line 173
    move-object v12, v3

    move v13, v6

    aget-object v12, v12, v13

    move-object v7, v12

    .line 174
    .local v7, "fci":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    move-object v12, v7

    iget-object v12, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->firstFont:Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    if-nez v12, :cond_a

    .line 175
    sget-boolean v12, Lcom/sun/javafx/font/FontConfigManager;->debugFonts:Z

    if-eqz v12, :cond_7

    .line 176
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fontconfig returned no font for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v3

    move v15, v6

    aget-object v14, v14, v15

    iget-object v14, v14, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->fcName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    :cond_7
    const/4 v12, 0x1

    sput-boolean v12, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFailed:Z

    .line 172
    :cond_8
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 160
    .end local v5    # "anyFont":Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;
    .end local v6    # "i":I
    .end local v7    # "fci":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    :cond_9
    sget-boolean v12, Lcom/sun/javafx/font/FontConfigManager;->debugFonts:Z

    if-eqz v12, :cond_4

    .line 161
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Not using FontConfig"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 136
    .end local v2    # "fontConfigNames":[Ljava/lang/String;
    .end local v3    # "fontArr":[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    .end local v4    # "foundFontConfig":Z
    :catchall_0
    move-exception v0

    monitor-exit v18

    .end local v0    # "t0":J
    throw v0

    .line 180
    .restart local v0    # "t0":J
    .restart local v2    # "fontConfigNames":[Ljava/lang/String;
    .restart local v3    # "fontArr":[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    .restart local v4    # "foundFontConfig":Z
    .restart local v5    # "anyFont":Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;
    .restart local v6    # "i":I
    .restart local v7    # "fci":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    :cond_a
    move-object v12, v5

    if-nez v12, :cond_8

    .line 181
    move-object v12, v7

    :try_start_2
    iget-object v12, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->firstFont:Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    move-object v5, v12

    .line 182
    move-object v12, v5

    iget-object v12, v12, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    sput-object v12, Lcom/sun/javafx/font/FontConfigManager;->defaultFontFile:Ljava/lang/String;

    goto :goto_4

    .line 186
    .end local v7    # "fci":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    :cond_b
    move-object v12, v5

    if-nez v12, :cond_c

    .line 187
    const/4 v12, 0x1

    sput-boolean v12, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFailed:Z

    .line 188
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Error: JavaFX detected no fonts! Please refer to release notes for proper font configuration"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    goto/16 :goto_0

    .line 191
    :cond_c
    sget-boolean v12, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFailed:Z

    if-eqz v12, :cond_e

    .line 192
    const/4 v12, 0x0

    move v6, v12

    :goto_5
    move v12, v6

    move-object v13, v3

    array-length v13, v13

    if-ge v12, v13, :cond_e

    .line 193
    move-object v12, v3

    move v13, v6

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->firstFont:Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    if-nez v12, :cond_d

    .line 194
    move-object v12, v3

    move v13, v6

    aget-object v12, v12, v13

    move-object v13, v5

    iput-object v13, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->firstFont:Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    .line 192
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 199
    :cond_e
    move-object v12, v3

    sput-object v12, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFonts:[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    .line 201
    sget-boolean v12, Lcom/sun/javafx/font/FontConfigManager;->debugFonts:Z

    if-eqz v12, :cond_10

    .line 203
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    move-wide v6, v12

    .line 204
    .local v6, "t1":J
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Time spent accessing fontconfig="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide v14, v6

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    const/4 v12, 0x0

    move v8, v12

    .local v8, "i":I
    :goto_6
    move v12, v8

    sget-object v13, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFonts:[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    array-length v13, v13

    if-ge v12, v13, :cond_10

    .line 208
    sget-object v12, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFonts:[Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    move v13, v8

    aget-object v12, v12, v13

    move-object v9, v12

    .line 209
    .local v9, "fci":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FC font "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v9

    iget-object v14, v14, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->fcName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " maps to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v9

    iget-object v14, v14, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->firstFont:Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    iget-object v14, v14, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->fullName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v9

    iget-object v14, v14, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->firstFont:Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    iget-object v14, v14, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    move-object v12, v9

    iget-object v12, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->allFonts:[Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    if-eqz v12, :cond_f

    .line 213
    const/4 v12, 0x0

    move v10, v12

    .local v10, "f":I
    :goto_7
    move v12, v10

    move-object v13, v9

    iget-object v13, v13, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->allFonts:[Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    array-length v13, v13

    if-ge v12, v13, :cond_f

    .line 214
    move-object v12, v9

    iget-object v12, v12, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->allFonts:[Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    move v13, v10

    aget-object v12, v12, v13

    move-object v11, v12

    .line 215
    .local v11, "fcf":Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") Family="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v11

    iget-object v14, v14, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->familyName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Style="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v11

    iget-object v14, v14, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->styleStr:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Fullname="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v11

    iget-object v14, v14, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->fullName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", File="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v11

    iget-object v14, v14, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 207
    .end local v10    # "f":I
    .end local v11    # "fcf":Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 224
    .end local v6    # "t1":J
    .end local v8    # "i":I
    .end local v9    # "fci":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    :cond_10
    goto/16 :goto_0
.end method

.method private static synthetic lambda$static$237()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 49
    const-string v3, "prism.debugfonts"

    const-string v4, ""

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 50
    .local v0, "dbg":Ljava/lang/String;
    const-string v3, "true"

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/sun/javafx/font/FontConfigManager;->debugFonts:Z

    .line 51
    const-string v3, "prism.useFontConfig"

    const-string v4, "true"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 52
    .local v1, "ufc":Ljava/lang/String;
    const-string v3, "true"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/sun/javafx/font/FontConfigManager;->useFontConfig:Z

    .line 53
    const-string v3, "prism.embeddedfonts"

    const-string v4, ""

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 54
    .local v2, "emb":Ljava/lang/String;
    const-string v3, "true"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/sun/javafx/font/FontConfigManager;->useEmbeddedFontSupport:Z

    .line 55
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "dbg":Ljava/lang/String;
    return-object v0
.end method

.method private static mapFxToFcLogicalFamilyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "fxName":Ljava/lang/String;
    move-object v1, v0

    const-string v2, "serif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const-string v1, "serif"

    move-object v0, v1

    .line 260
    .end local v0    # "fxName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 257
    .restart local v0    # "fxName":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    const-string v2, "monospaced"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    const-string v1, "monospace"

    move-object v0, v1

    goto :goto_0

    .line 260
    :cond_1
    const-string v1, "sans"

    move-object v0, v1

    goto :goto_0
.end method

.method public static populateMaps(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)V
    .locals 9
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
    .line 238
    move-object v0, p0

    .local v0, "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "fontToFamilyNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "familyToFontListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    move-object v3, p3

    .local v3, "locale":Ljava/util/Locale;
    const/4 v5, 0x0

    move v4, v5

    .line 239
    .local v4, "pnm":Z
    sget-boolean v5, Lcom/sun/javafx/font/FontConfigManager;->useFontConfig:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFailed:Z

    if-nez v5, :cond_0

    .line 240
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/sun/javafx/font/FontConfigManager;->populateMapsNative(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)Z

    move-result v5

    move v4, v5

    .line 245
    :cond_0
    sget-boolean v5, Lcom/sun/javafx/font/FontConfigManager;->fontConfigFailed:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/sun/javafx/font/FontConfigManager;->useEmbeddedFontSupport:Z

    if-nez v5, :cond_1

    move v5, v4

    if-nez v5, :cond_2

    .line 248
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/sun/javafx/font/FontConfigManager$EmbeddedFontSupport;->populateMaps(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)V

    .line 252
    :cond_2
    return-void
.end method

.method private static native populateMapsNative(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)Z
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
            ")Z"
        }
    .end annotation
.end method
