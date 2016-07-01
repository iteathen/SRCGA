.class Lcom/sun/javafx/font/AndroidFontFinder;
.super Ljava/lang/Object;
.source "AndroidFontFinder.java"


# static fields
.field private static final SYSTEM_FONT_NAME:Ljava/lang/String; = "sans serif"

.field private static final SYSTEM_FONT_SIZE:F = 16.0f

.field static final fontDescriptor_2_X_Path:Ljava/lang/String; = "/com/sun/javafx/font/android_system_fonts.xml"

.field static final fontDescriptor_4_X_Path:Ljava/lang/String; = "/system/etc/system_fonts.xml"

.field static final systemFontsDir:Ljava/lang/String; = "/system/fonts"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/sun/javafx/font/AndroidFontFinder$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/AndroidFontFinder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/font/AndroidFontFinder;->lambda$static$223()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "sans serif"

    return-object v0
.end method

.method public static getSystemFontSize()F
    .locals 1

    .prologue
    .line 77
    const/high16 v0, 0x41800000    # 16.0f

    return v0
.end method

.method public static getSystemFontsDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "/system/fonts"

    return-object v0
.end method

.method private static synthetic lambda$static$223()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 67
    const-string v0, "javafx_font"

    invoke-static {v0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseSystemDefaultFonts(Ljava/io/InputStream;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
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
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "is":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "fontToFamilyNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v3, p3

    .local v3, "familyToFontListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    move-object v4, v7

    .line 123
    .local v4, "factory":Ljavax/xml/parsers/SAXParserFactory;
    move-object v7, v4

    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v7

    move-object v5, v7

    .line 125
    .local v5, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v7, Lcom/sun/javafx/font/AndroidFontFinder$1;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/javafx/font/AndroidFontFinder$1;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object v6, v7

    .line 216
    .local v6, "handler":Lorg/xml/sax/helpers/DefaultHandler;
    move-object v7, v5

    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    const/4 v7, 0x1

    move v0, v7

    .line 226
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v4    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v5    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v6    # "handler":Lorg/xml/sax/helpers/DefaultHandler;
    :goto_0
    return v0

    .line 219
    .restart local v0    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 220
    .local v4, "e":Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Failed to load default fonts descriptor: /system/etc/system_fonts.xml"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    .line 226
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 222
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 223
    .local v4, "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Failed parsing default fonts descriptor;"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static parse_2_X_SystemDefaultFonts(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 8
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
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "fontToFamilyNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "familyToFontListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-class v4, Lcom/sun/javafx/font/AndroidFontFinder;

    const-string v5, "/com/sun/javafx/font/android_system_fonts.xml"

    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 91
    .local v3, "is":Ljava/io/InputStream;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 92
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Resource not found: /com/sun/javafx/font/android_system_fonts.xml"

    .line 93
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    const/4 v4, 0x0

    move v0, v4

    .line 96
    .end local v0    # "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v0

    .restart local v0    # "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object v4, v3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/font/AndroidFontFinder;->parseSystemDefaultFonts(Ljava/io/InputStream;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method private static parse_4_X_SystemDefaultFonts(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 10
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
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "fontToFamilyNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "familyToFontListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v5, Ljava/io/File;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "/system/etc/system_fonts.xml"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 106
    .local v3, "iFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-static {v5, v6, v7, v8}, Lcom/sun/javafx/font/AndroidFontFinder;->parseSystemDefaultFonts(Ljava/io/InputStream;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    .line 112
    .end local v0    # "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v0

    .line 109
    .restart local v0    # "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 110
    .local v4, "e":Ljava/io/FileNotFoundException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "File not found: /system/etc/system_fonts.xml"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public static populateFontFileNameMap(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)V
    .locals 8
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
    .line 235
    move-object v0, p0

    .local v0, "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "fontToFamilyNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "familyToFontListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    move-object v3, p3

    .local v3, "locale":Ljava/util/Locale;
    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v2

    if-nez v5, :cond_1

    .line 237
    .line 249
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    move-object v5, v3

    if-nez v5, :cond_2

    .line 240
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object v3, v5

    .line 243
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/font/AndroidFontFinder;->parse_4_X_SystemDefaultFonts(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v5

    move v4, v5

    .line 245
    .local v4, "systemFonts_4_X_DescriptorFound":Z
    move v5, v4

    if-nez v5, :cond_3

    .line 246
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/font/AndroidFontFinder;->parse_2_X_SystemDefaultFonts(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v5

    .line 249
    :cond_3
    goto :goto_0
.end method
