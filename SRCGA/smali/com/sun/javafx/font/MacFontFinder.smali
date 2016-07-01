.class Lcom/sun/javafx/font/MacFontFinder;
.super Ljava/lang/Object;
.source "MacFontFinder.java"


# static fields
.field private static final MonospacedFontType:I = 0x1

.field private static final SystemFontType:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/sun/javafx/font/MacFontFinder$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/MacFontFinder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/font/MacFontFinder;->lambda$static$241()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private static native getFont(I)Ljava/lang/String;
.end method

.method private static native getFontData()[Ljava/lang/String;
.end method

.method public static getMonospacedFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sun/javafx/font/MacFontFinder;->getFont(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sun/javafx/font/MacFontFinder;->getFont(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static native getSystemFontSize()F
.end method

.method private static synthetic lambda$static$241()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 41
    const-string v0, "javafx_font"

    invoke-static {v0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public static populateFontFileNameMap(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)Z
    .locals 16
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

    .prologue
    .line 66
    move-object/from16 v0, p0

    .local v0, "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p1

    .local v1, "fontToFamilyNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v2, p2

    .local v2, "familyToFontListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    move-object/from16 v3, p3

    .local v3, "locale":Ljava/util/Locale;
    move-object v12, v0

    if-eqz v12, :cond_0

    move-object v12, v1

    if-eqz v12, :cond_0

    move-object v12, v2

    if-nez v12, :cond_1

    .line 69
    :cond_0
    const/4 v12, 0x0

    move v0, v12

    .line 110
    .end local v0    # "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v0

    .line 71
    .restart local v0    # "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object v12, v3

    if-nez v12, :cond_2

    .line 72
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object v3, v12

    .line 74
    :cond_2
    invoke-static {}, Lcom/sun/javafx/font/MacFontFinder;->getFontData()[Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 75
    .local v4, "fontData":[Ljava/lang/String;
    move-object v12, v4

    if-nez v12, :cond_3

    const/4 v12, 0x0

    move v0, v12

    goto :goto_0

    .line 77
    :cond_3
    const/4 v12, 0x0

    move v5, v12

    .line 78
    .local v5, "i":I
    :goto_1
    move v12, v5

    move-object v13, v4

    array-length v13, v13

    if-ge v12, v13, :cond_b

    .line 79
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v12, v12, v13

    move-object v6, v12

    .line 80
    .local v6, "name":Ljava/lang/String;
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v12, v12, v13

    move-object v7, v12

    .line 81
    .local v7, "family":Ljava/lang/String;
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v12, v12, v13

    move-object v8, v12

    .line 83
    .local v8, "file":Ljava/lang/String;
    sget-boolean v12, Lcom/sun/javafx/font/PrismFontFactory;->useNativeRasterizer:Z

    if-nez v12, :cond_8

    .line 85
    move-object v12, v8

    const-string v13, ".otf"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 86
    move-object v12, v6

    const-string v13, " Pro W"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    goto :goto_1

    .line 87
    :cond_4
    move-object v12, v6

    const-string v13, " ProN W"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    goto :goto_1

    .line 88
    :cond_5
    move-object v12, v6

    const-string v13, " Std W"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    goto :goto_1

    .line 89
    :cond_6
    move-object v12, v6

    const-string v13, " StdN W"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_7

    goto :goto_1

    .line 90
    :cond_7
    move-object v12, v6

    const-string v13, "Hiragino"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_8

    goto :goto_1

    .line 93
    :cond_8
    sget-boolean v12, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v12, :cond_9

    .line 94
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[MacFontFinder] Name="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\tFamily="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\tFile="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    :cond_9
    move-object v12, v6

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 100
    .local v9, "lcName":Ljava/lang/String;
    move-object v12, v7

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 101
    .local v10, "lcFamily":Ljava/lang/String;
    move-object v12, v0

    move-object v13, v9

    move-object v14, v8

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 102
    move-object v12, v1

    move-object v13, v9

    move-object v14, v7

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 103
    move-object v12, v2

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move-object v11, v12

    .line 104
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v12, v11

    if-nez v12, :cond_a

    .line 105
    new-instance v12, Ljava/util/ArrayList;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v12

    .line 106
    move-object v12, v2

    move-object v13, v10

    move-object v14, v11

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 108
    :cond_a
    move-object v12, v11

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 109
    goto/16 :goto_1

    .line 110
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "family":Ljava/lang/String;
    .end local v8    # "file":Ljava/lang/String;
    .end local v9    # "lcName":Ljava/lang/String;
    .end local v10    # "lcFamily":Ljava/lang/String;
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    const/4 v12, 0x1

    move v0, v12

    goto/16 :goto_0
.end method
