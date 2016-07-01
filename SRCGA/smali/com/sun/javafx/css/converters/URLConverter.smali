.class public final Lcom/sun/javafx/css/converters/URLConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "URLConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/converters/URLConverter$SequenceConverter;,
        Lcom/sun/javafx/css/converters/URLConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/URLConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/URLConverter$1;)V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/URLConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/URLConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/URLConverter;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/net/URL;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter;->lambda$resolveRuntimeImport$174()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Ljavafx/css/StyleConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/sun/javafx/css/converters/URLConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/converters/URLConverter;

    return-object v0
.end method

.method private static synthetic lambda$resolveRuntimeImport$174()Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    const-class v2, Ljavafx/application/Application;

    invoke-virtual {v2}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v2

    move-object v0, v2

    .line 189
    .local v0, "protectionDomain":Ljava/security/ProtectionDomain;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v2

    move-object v1, v2

    .line 191
    .local v1, "codeSource":Ljava/security/CodeSource;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "protectionDomain":Ljava/security/ProtectionDomain;
    return-object v0
.end method

.method private resolveRuntimeImport(Ljava/net/URI;)Ljava/net/URL;
    .locals 23

    .prologue
    .line 166
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/URLConverter;
    move-object/from16 v1, p1

    .local v1, "resourceUri":Ljava/net/URI;
    move-object v13, v1

    invoke-virtual {v13}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v13

    move-object v2, v13

    .line 167
    .local v2, "path":Ljava/lang/String;
    move-object v13, v2

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v13, v2

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :goto_0
    move-object v3, v13

    .line 169
    .local v3, "resourcePath":Ljava/lang/String;
    move-object v13, v3

    const-string v14, "com/sun/javafx/scene/control/skin/modena/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object v13, v3

    const-string v14, "com/sun/javafx/scene/control/skin/caspian/"

    .line 170
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_0
    move-object v13, v3

    const-string v14, ".css"

    .line 171
    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object v13, v3

    const-string v14, ".bss"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 173
    :cond_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v13

    move-object v4, v13

    .line 174
    .local v4, "sm":Ljava/lang/SecurityManager;
    move-object v13, v4

    if-nez v13, :cond_3

    .line 178
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    move-object v5, v13

    .line 179
    .local v5, "contextClassLoader":Ljava/lang/ClassLoader;
    move-object v13, v5

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    move-object v6, v13

    .line 180
    .local v6, "resolved":Ljava/net/URL;
    move-object v13, v6

    move-object v0, v13

    .line 230
    .end local v0    # "this":Lcom/sun/javafx/css/converters/URLConverter;
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    .end local v5    # "contextClassLoader":Ljava/lang/ClassLoader;
    .end local v6    # "resolved":Ljava/net/URL;
    :goto_1
    return-object v0

    .line 167
    .end local v3    # "resourcePath":Ljava/lang/String;
    .restart local v0    # "this":Lcom/sun/javafx/css/converters/URLConverter;
    :cond_2
    move-object v13, v2

    goto :goto_0

    .line 185
    .restart local v3    # "resourcePath":Ljava/lang/String;
    .restart local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedExceptionAction;

    move-result-object v13

    invoke-static {v13}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/URL;

    move-object v5, v13

    .line 194
    .local v5, "rtJarURL":Ljava/net/URL;
    move-object v13, v5

    invoke-virtual {v13}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v13

    move-object v6, v13

    .line 196
    .local v6, "rtJarURI":Ljava/net/URI;
    move-object v13, v6

    invoke-virtual {v13}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    .line 197
    .local v7, "scheme":Ljava/lang/String;
    move-object v13, v6

    invoke-virtual {v13}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 206
    .local v8, "rtJarPath":Ljava/lang/String;
    const-string v13, "file"

    move-object v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v13, v8

    const-string v14, ".jar"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 207
    const-string v13, "file"

    move-object v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 208
    const-string v13, "jar:file"

    move-object v7, v13

    .line 209
    move-object v13, v8

    const-string v14, "!/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 212
    :cond_4
    move-object v13, v8

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 214
    move-object v13, v6

    invoke-virtual {v13}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 215
    .local v9, "rtJarUserInfo":Ljava/lang/String;
    move-object v13, v6

    invoke-virtual {v13}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 216
    .local v10, "rtJarHost":Ljava/lang/String;
    move-object v13, v6

    invoke-virtual {v13}, Ljava/net/URI;->getPort()I

    move-result v13

    move v11, v13

    .line 222
    .local v11, "rtJarPort":I
    new-instance v13, Ljava/net/URI;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v7

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move/from16 v18, v11

    move-object/from16 v19, v8

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v14 .. v21}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v13

    .line 223
    .local v12, "resolved":Ljava/net/URI;
    move-object v13, v12

    invoke-virtual {v13}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v13

    move-object v0, v13

    goto :goto_1

    .line 225
    .end local v5    # "rtJarURL":Ljava/net/URL;
    .end local v6    # "rtJarURI":Ljava/net/URI;
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v8    # "rtJarPath":Ljava/lang/String;
    .end local v9    # "rtJarUserInfo":Ljava/lang/String;
    .end local v10    # "rtJarHost":Ljava/lang/String;
    .end local v11    # "rtJarPort":I
    .end local v12    # "resolved":Ljava/net/URI;
    :catch_0
    move-exception v13

    :goto_2
    move-object v5, v13

    .line 230
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_5
    const/4 v13, 0x0

    move-object v0, v13

    goto/16 :goto_1

    .line 225
    .restart local v4    # "sm":Ljava/lang/SecurityManager;
    :catch_1
    move-exception v13

    goto :goto_2

    :catch_2
    move-exception v13

    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/URLConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/URLConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/URLConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/URLConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    const/4 v8, 0x0

    move-object v3, v8

    .line 69
    .local v3, "url":Ljava/lang/String;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljavafx/css/ParsedValue;

    move-object v4, v8

    .line 71
    .local v4, "values":[Ljavafx/css/ParsedValue;
    move-object v8, v4

    array-length v8, v8

    if-lez v8, :cond_1

    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v8

    move-object v9, v4

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Ljavafx/css/StyleConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :goto_0
    move-object v5, v8

    .line 73
    .local v5, "resource":Ljava/lang/String;
    move-object v8, v5

    if-eqz v8, :cond_0

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 75
    move-object v8, v5

    const-string v9, "url("

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 76
    move-object v8, v5

    const/4 v9, 0x4

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/javafx/util/Utils;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 81
    :goto_1
    move-object v8, v4

    array-length v8, v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    move-object v8, v4

    const/4 v9, 0x1

    aget-object v8, v8, v9

    if-eqz v8, :cond_3

    move-object v8, v4

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :goto_2
    move-object v6, v8

    .line 82
    .local v6, "stylesheetURL":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v6

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/css/converters/URLConverter;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    move-object v7, v8

    .line 84
    .local v7, "resolvedURL":Ljava/net/URL;
    move-object v8, v7

    if-eqz v8, :cond_0

    move-object v8, v7

    invoke-virtual {v8}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 87
    .end local v6    # "stylesheetURL":Ljava/lang/String;
    .end local v7    # "resolvedURL":Ljava/net/URL;
    :cond_0
    move-object v8, v3

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/css/converters/URLConverter;
    return-object v0

    .line 71
    .end local v5    # "resource":Ljava/lang/String;
    .restart local v0    # "this":Lcom/sun/javafx/css/converters/URLConverter;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 78
    .restart local v5    # "resource":Ljava/lang/String;
    :cond_2
    move-object v8, v5

    invoke-static {v8}, Lcom/sun/javafx/util/Utils;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    goto :goto_1

    .line 81
    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 15

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/URLConverter;
    move-object/from16 v1, p1

    .local v1, "stylesheetUrl":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "resource":Ljava/lang/String;
    move-object v10, v2

    if-eqz v10, :cond_1

    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :goto_0
    move-object v3, v10

    .line 95
    .local v3, "resourcePath":Ljava/lang/String;
    move-object v10, v3

    if-eqz v10, :cond_0

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    const/4 v10, 0x0

    move-object v0, v10

    .line 151
    .end local v0    # "this":Lcom/sun/javafx/css/converters/URLConverter;
    :goto_1
    return-object v0

    .line 94
    .end local v3    # "resourcePath":Ljava/lang/String;
    .restart local v0    # "this":Lcom/sun/javafx/css/converters/URLConverter;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 103
    .restart local v3    # "resourcePath":Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v10, Ljava/net/URI;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v3

    invoke-direct {v11, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v4, v10

    .line 105
    .local v4, "resourceUri":Ljava/net/URI;
    move-object v10, v4

    invoke-virtual {v10}, Ljava/net/URI;->isAbsolute()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 106
    move-object v10, v4

    invoke-virtual {v10}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 109
    :cond_3
    move-object v10, v0

    move-object v11, v4

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/converters/URLConverter;->resolveRuntimeImport(Ljava/net/URI;)Ljava/net/URL;

    move-result-object v10

    move-object v5, v10

    .line 110
    .local v5, "rtJarUrl":Ljava/net/URL;
    move-object v10, v5

    if-eqz v10, :cond_4

    .line 111
    move-object v10, v5

    move-object v0, v10

    goto :goto_1

    .line 114
    :cond_4
    move-object v10, v4

    invoke-virtual {v10}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 115
    .local v6, "path":Ljava/lang/String;
    move-object v10, v6

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    move-object v7, v10

    .line 117
    .local v7, "contextClassLoader":Ljava/lang/ClassLoader;
    move-object v10, v7

    move-object v11, v6

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 120
    .end local v7    # "contextClassLoader":Ljava/lang/ClassLoader;
    :cond_5
    move-object v10, v1

    if-eqz v10, :cond_6

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :goto_2
    move-object v7, v10

    .line 122
    .local v7, "stylesheetPath":Ljava/lang/String;
    move-object v10, v7

    if-eqz v10, :cond_8

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 124
    new-instance v10, Ljava/net/URI;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v7

    invoke-direct {v11, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v8, v10

    .line 126
    .local v8, "stylesheetUri":Ljava/net/URI;
    move-object v10, v8

    invoke-virtual {v10}, Ljava/net/URI;->isOpaque()Z

    move-result v10

    if-nez v10, :cond_7

    .line 128
    move-object v10, v8

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v10

    move-object v9, v10

    .line 129
    .local v9, "resolved":Ljava/net/URI;
    move-object v10, v9

    invoke-virtual {v10}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 120
    .end local v7    # "stylesheetPath":Ljava/lang/String;
    .end local v8    # "stylesheetUri":Ljava/net/URI;
    .end local v9    # "resolved":Ljava/net/URI;
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 134
    .restart local v7    # "stylesheetPath":Ljava/lang/String;
    .restart local v8    # "stylesheetUri":Ljava/net/URI;
    :cond_7
    move-object v10, v8

    invoke-virtual {v10}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v10

    move-object v9, v10

    .line 135
    .local v9, "url":Ljava/net/URL;
    new-instance v10, Ljava/net/URL;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v9

    move-object v13, v4

    invoke-virtual {v13}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v0, v10

    goto/16 :goto_1

    .line 141
    .end local v8    # "stylesheetUri":Ljava/net/URI;
    .end local v9    # "url":Ljava/net/URL;
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    move-object v8, v10

    .line 142
    .local v8, "contextClassLoader":Ljava/lang/ClassLoader;
    move-object v10, v8

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_1

    .line 145
    .end local v4    # "resourceUri":Ljava/net/URI;
    .end local v5    # "rtJarUrl":Ljava/net/URL;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "stylesheetPath":Ljava/lang/String;
    .end local v8    # "contextClassLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v10

    :goto_3
    move-object v4, v10

    .line 146
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getCSSLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    move-object v5, v10

    .line 147
    .local v5, "cssLogger":Lsun/util/logging/PlatformLogger;
    move-object v10, v5

    sget-object v11, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 148
    move-object v10, v5

    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 151
    :cond_9
    const/4 v10, 0x0

    move-object v0, v10

    goto/16 :goto_1

    .line 145
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "cssLogger":Lsun/util/logging/PlatformLogger;
    :catch_1
    move-exception v10

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/URLConverter;
    const-string v1, "URLType"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/URLConverter;
    return-object v0
.end method
