.class public Ljavax/script/ScriptEngineManager;
.super Ljava/lang/Object;
.source "ScriptEngineManager.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private engineSpis:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljavax/script/ScriptEngineFactory;",
            ">;"
        }
    .end annotation
.end field

.field private extensionAssociations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/script/ScriptEngineFactory;",
            ">;"
        }
    .end annotation
.end field

.field private globalScope:Ljavax/script/Bindings;

.field private mimeTypeAssociations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/script/ScriptEngineFactory;",
            ">;"
        }
    .end annotation
.end field

.field private nameAssociations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/script/ScriptEngineFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v1, v2

    .line 61
    .local v1, "ctxtLoader":Ljava/lang/ClassLoader;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavax/script/ScriptEngineManager;->init(Ljava/lang/ClassLoader;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    move-object v1, p1

    .local v1, "loader":Ljava/lang/ClassLoader;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 75
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavax/script/ScriptEngineManager;->init(Ljava/lang/ClassLoader;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Ljavax/script/ScriptEngineManager;Ljava/lang/ClassLoader;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "x0":Ljavax/script/ScriptEngineManager;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/ClassLoader;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavax/script/ScriptEngineManager;->initEngines(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private init(Ljava/lang/ClassLoader;)V
    .locals 7

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    move-object v1, p1

    .local v1, "loader":Ljava/lang/ClassLoader;
    move-object v2, v0

    new-instance v3, Ljavax/script/SimpleBindings;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljavax/script/SimpleBindings;-><init>()V

    iput-object v3, v2, Ljavax/script/ScriptEngineManager;->globalScope:Ljavax/script/Bindings;

    .line 80
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Ljavax/script/ScriptEngineManager;->engineSpis:Ljava/util/HashSet;

    .line 81
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Ljavax/script/ScriptEngineManager;->nameAssociations:Ljava/util/HashMap;

    .line 82
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Ljavax/script/ScriptEngineManager;->extensionAssociations:Ljava/util/HashMap;

    .line 83
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Ljavax/script/ScriptEngineManager;->mimeTypeAssociations:Ljava/util/HashMap;

    .line 84
    new-instance v2, Ljavax/script/ScriptEngineManager$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavax/script/ScriptEngineManager$1;-><init>(Ljavax/script/ScriptEngineManager;Ljava/lang/ClassLoader;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    .line 90
    return-void
.end method

.method private initEngines(Ljava/lang/ClassLoader;)V
    .locals 8

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    move-object v1, p1

    .local v1, "loader":Ljava/lang/ClassLoader;
    const/4 v4, 0x0

    move-object v2, v4

    .line 96
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/script/ScriptEngineFactory;>;"
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 97
    :try_start_0
    const-class v4, Ljavax/script/ScriptEngineFactory;

    move-object v5, v1

    invoke-static {v4, v5}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v4

    move-object v3, v4

    .line 101
    .local v3, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljavax/script/ScriptEngineFactory;>;"
    :goto_0
    move-object v4, v3

    invoke-virtual {v4}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 112
    .line 115
    .end local v3    # "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljavax/script/ScriptEngineFactory;>;"
    :goto_1
    move-object v4, v2

    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/util/ServiceConfigurationError; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    move-object v4, v2

    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/script/ScriptEngineFactory;

    move-object v3, v4

    .line 118
    .local v3, "fact":Ljavax/script/ScriptEngineFactory;
    move-object v4, v0

    iget-object v4, v4, Ljavax/script/ScriptEngineManager;->engineSpis:Ljava/util/HashSet;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/util/ServiceConfigurationError; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 127
    goto :goto_1

    .line 99
    .end local v3    # "fact":Ljavax/script/ScriptEngineFactory;
    :cond_0
    :try_start_3
    const-class v4, Ljavax/script/ScriptEngineFactory;

    invoke-static {v4}, Ljava/util/ServiceLoader;->loadInstalled(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    :try_end_3
    .catch Ljava/util/ServiceConfigurationError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    move-object v3, v4

    .local v3, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljavax/script/ScriptEngineFactory;>;"
    goto :goto_0

    .line 102
    .end local v3    # "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljavax/script/ScriptEngineFactory;>;"
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 103
    .local v3, "err":Ljava/util/ServiceConfigurationError;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find ScriptEngineFactory providers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    .line 104
    invoke-virtual {v6}, Ljava/util/ServiceConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    .line 140
    .end local v3    # "err":Ljava/util/ServiceConfigurationError;
    :goto_2
    return-void

    .line 119
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 120
    .restart local v3    # "err":Ljava/util/ServiceConfigurationError;
    :try_start_4
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScriptEngineManager providers.next(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    .line 121
    invoke-virtual {v6}, Ljava/util/ServiceConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/util/ServiceConfigurationError; {:try_start_4 .. :try_end_4} :catch_2

    .line 126
    goto :goto_1

    .line 139
    .line 140
    .end local v3    # "err":Ljava/util/ServiceConfigurationError;
    :cond_1
    goto :goto_2

    .line 129
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 130
    .restart local v3    # "err":Ljava/util/ServiceConfigurationError;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScriptEngineManager providers.hasNext(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    .line 131
    invoke-virtual {v6}, Ljava/util/ServiceConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    goto :goto_2
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/ScriptEngineManager;->globalScope:Ljavax/script/Bindings;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/script/Bindings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/script/ScriptEngineManager;
    return-object v0
.end method

.method public getBindings()Ljavax/script/Bindings;
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    move-object v1, v0

    iget-object v1, v1, Ljavax/script/ScriptEngineManager;->globalScope:Ljavax/script/Bindings;

    move-object v0, v1

    .end local v0    # "this":Ljavax/script/ScriptEngineManager;
    return-object v0
.end method

.method public getEngineByExtension(Ljava/lang/String;)Ljavax/script/ScriptEngine;
    .locals 13

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    move-object v1, p1

    .local v1, "extension":Ljava/lang/String;
    move-object v9, v1

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 261
    :cond_0
    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Ljavax/script/ScriptEngineManager;->extensionAssociations:Ljava/util/HashMap;

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    move-object v2, v11

    .local v2, "obj":Ljava/lang/Object;
    if-eq v9, v10, :cond_1

    .line 262
    move-object v9, v2

    check-cast v9, Ljavax/script/ScriptEngineFactory;

    move-object v3, v9

    .line 264
    .local v3, "spi":Ljavax/script/ScriptEngineFactory;
    move-object v9, v3

    :try_start_0
    invoke-interface {v9}, Ljavax/script/ScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v9

    move-object v4, v9

    .line 265
    .local v4, "engine":Ljavax/script/ScriptEngine;
    move-object v9, v4

    move-object v10, v0

    invoke-virtual {v10}, Ljavax/script/ScriptEngineManager;->getBindings()Ljavax/script/Bindings;

    move-result-object v10

    const/16 v11, 0xc8

    invoke-interface {v9, v10, v11}, Ljavax/script/ScriptEngine;->setBindings(Ljavax/script/Bindings;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    move-object v9, v4

    move-object v0, v9

    .line 292
    .end local v0    # "this":Ljavax/script/ScriptEngineManager;
    .end local v3    # "spi":Ljavax/script/ScriptEngineFactory;
    .end local v4    # "engine":Ljavax/script/ScriptEngine;
    :goto_0
    return-object v0

    .line 267
    .restart local v0    # "this":Ljavax/script/ScriptEngineManager;
    .restart local v3    # "spi":Ljavax/script/ScriptEngineFactory;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 272
    .end local v3    # "spi":Ljavax/script/ScriptEngineFactory;
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Ljavax/script/ScriptEngineManager;->engineSpis:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v3, v9

    :goto_1
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/script/ScriptEngineFactory;

    move-object v4, v9

    .line 273
    .local v4, "spi":Ljavax/script/ScriptEngineFactory;
    const/4 v9, 0x0

    move-object v5, v9

    .line 275
    .local v5, "exts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v9, v4

    :try_start_1
    invoke-interface {v9}, Ljavax/script/ScriptEngineFactory;->getExtensions()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    move-object v5, v9

    .line 278
    .line 279
    :goto_2
    move-object v9, v5

    if-nez v9, :cond_2

    goto :goto_1

    .line 276
    :catch_1
    move-exception v9

    move-object v6, v9

    goto :goto_2

    .line 280
    :cond_2
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    :goto_3
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v7, v9

    .line 281
    .local v7, "ext":Ljava/lang/String;
    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 283
    move-object v9, v4

    :try_start_2
    invoke-interface {v9}, Ljavax/script/ScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v9

    move-object v8, v9

    .line 284
    .local v8, "engine":Ljavax/script/ScriptEngine;
    move-object v9, v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavax/script/ScriptEngineManager;->getBindings()Ljavax/script/Bindings;

    move-result-object v10

    const/16 v11, 0xc8

    invoke-interface {v9, v10, v11}, Ljavax/script/ScriptEngine;->setBindings(Ljavax/script/Bindings;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 285
    move-object v9, v8

    move-object v0, v9

    goto :goto_0

    .line 286
    .end local v8    # "engine":Ljavax/script/ScriptEngine;
    :catch_2
    move-exception v9

    move-object v8, v9

    .line 290
    :cond_3
    goto :goto_3

    .line 291
    .end local v7    # "ext":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 292
    .end local v4    # "spi":Ljavax/script/ScriptEngineFactory;
    .end local v5    # "exts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0
.end method

.method public getEngineByMimeType(Ljava/lang/String;)Ljavax/script/ScriptEngine;
    .locals 13

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    move-object v9, v1

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 309
    :cond_0
    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Ljavax/script/ScriptEngineManager;->mimeTypeAssociations:Ljava/util/HashMap;

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    move-object v2, v11

    .local v2, "obj":Ljava/lang/Object;
    if-eq v9, v10, :cond_1

    .line 310
    move-object v9, v2

    check-cast v9, Ljavax/script/ScriptEngineFactory;

    move-object v3, v9

    .line 312
    .local v3, "spi":Ljavax/script/ScriptEngineFactory;
    move-object v9, v3

    :try_start_0
    invoke-interface {v9}, Ljavax/script/ScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v9

    move-object v4, v9

    .line 313
    .local v4, "engine":Ljavax/script/ScriptEngine;
    move-object v9, v4

    move-object v10, v0

    invoke-virtual {v10}, Ljavax/script/ScriptEngineManager;->getBindings()Ljavax/script/Bindings;

    move-result-object v10

    const/16 v11, 0xc8

    invoke-interface {v9, v10, v11}, Ljavax/script/ScriptEngine;->setBindings(Ljavax/script/Bindings;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    move-object v9, v4

    move-object v0, v9

    .line 340
    .end local v0    # "this":Ljavax/script/ScriptEngineManager;
    .end local v3    # "spi":Ljavax/script/ScriptEngineFactory;
    .end local v4    # "engine":Ljavax/script/ScriptEngine;
    :goto_0
    return-object v0

    .line 315
    .restart local v0    # "this":Ljavax/script/ScriptEngineManager;
    .restart local v3    # "spi":Ljavax/script/ScriptEngineFactory;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 320
    .end local v3    # "spi":Ljavax/script/ScriptEngineFactory;
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Ljavax/script/ScriptEngineManager;->engineSpis:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v3, v9

    :goto_1
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/script/ScriptEngineFactory;

    move-object v4, v9

    .line 321
    .local v4, "spi":Ljavax/script/ScriptEngineFactory;
    const/4 v9, 0x0

    move-object v5, v9

    .line 323
    .local v5, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v9, v4

    :try_start_1
    invoke-interface {v9}, Ljavax/script/ScriptEngineFactory;->getMimeTypes()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    move-object v5, v9

    .line 326
    .line 327
    :goto_2
    move-object v9, v5

    if-nez v9, :cond_2

    goto :goto_1

    .line 324
    :catch_1
    move-exception v9

    move-object v6, v9

    goto :goto_2

    .line 328
    :cond_2
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    :goto_3
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v7, v9

    .line 329
    .local v7, "type":Ljava/lang/String;
    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 331
    move-object v9, v4

    :try_start_2
    invoke-interface {v9}, Ljavax/script/ScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v9

    move-object v8, v9

    .line 332
    .local v8, "engine":Ljavax/script/ScriptEngine;
    move-object v9, v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavax/script/ScriptEngineManager;->getBindings()Ljavax/script/Bindings;

    move-result-object v10

    const/16 v11, 0xc8

    invoke-interface {v9, v10, v11}, Ljavax/script/ScriptEngine;->setBindings(Ljavax/script/Bindings;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 333
    move-object v9, v8

    move-object v0, v9

    goto :goto_0

    .line 334
    .end local v8    # "engine":Ljavax/script/ScriptEngine;
    :catch_2
    move-exception v9

    move-object v8, v9

    .line 338
    :cond_3
    goto :goto_3

    .line 339
    .end local v7    # "type":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 340
    .end local v4    # "spi":Ljavax/script/ScriptEngineFactory;
    .end local v5    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0
.end method

.method public getEngineByName(Ljava/lang/String;)Ljavax/script/ScriptEngine;
    .locals 13

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    move-object v1, p1

    .local v1, "shortName":Ljava/lang/String;
    move-object v9, v1

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 210
    :cond_0
    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Ljavax/script/ScriptEngineManager;->nameAssociations:Ljava/util/HashMap;

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    move-object v2, v11

    .local v2, "obj":Ljava/lang/Object;
    if-eq v9, v10, :cond_1

    .line 211
    move-object v9, v2

    check-cast v9, Ljavax/script/ScriptEngineFactory;

    move-object v3, v9

    .line 213
    .local v3, "spi":Ljavax/script/ScriptEngineFactory;
    move-object v9, v3

    :try_start_0
    invoke-interface {v9}, Ljavax/script/ScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v9

    move-object v4, v9

    .line 214
    .local v4, "engine":Ljavax/script/ScriptEngine;
    move-object v9, v4

    move-object v10, v0

    invoke-virtual {v10}, Ljavax/script/ScriptEngineManager;->getBindings()Ljavax/script/Bindings;

    move-result-object v10

    const/16 v11, 0xc8

    invoke-interface {v9, v10, v11}, Ljavax/script/ScriptEngine;->setBindings(Ljavax/script/Bindings;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    move-object v9, v4

    move-object v0, v9

    .line 244
    .end local v0    # "this":Ljavax/script/ScriptEngineManager;
    .end local v3    # "spi":Ljavax/script/ScriptEngineFactory;
    .end local v4    # "engine":Ljavax/script/ScriptEngine;
    :goto_0
    return-object v0

    .line 216
    .restart local v0    # "this":Ljavax/script/ScriptEngineManager;
    .restart local v3    # "spi":Ljavax/script/ScriptEngineFactory;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 221
    .end local v3    # "spi":Ljavax/script/ScriptEngineFactory;
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Ljavax/script/ScriptEngineManager;->engineSpis:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v3, v9

    :goto_1
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/script/ScriptEngineFactory;

    move-object v4, v9

    .line 222
    .local v4, "spi":Ljavax/script/ScriptEngineFactory;
    const/4 v9, 0x0

    move-object v5, v9

    .line 224
    .local v5, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v9, v4

    :try_start_1
    invoke-interface {v9}, Ljavax/script/ScriptEngineFactory;->getNames()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    move-object v5, v9

    .line 227
    .line 229
    :goto_2
    move-object v9, v5

    if-eqz v9, :cond_3

    .line 230
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    :goto_3
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v7, v9

    .line 231
    .local v7, "name":Ljava/lang/String;
    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 233
    move-object v9, v4

    :try_start_2
    invoke-interface {v9}, Ljavax/script/ScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v9

    move-object v8, v9

    .line 234
    .local v8, "engine":Ljavax/script/ScriptEngine;
    move-object v9, v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavax/script/ScriptEngineManager;->getBindings()Ljavax/script/Bindings;

    move-result-object v10

    const/16 v11, 0xc8

    invoke-interface {v9, v10, v11}, Ljavax/script/ScriptEngine;->setBindings(Ljavax/script/Bindings;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 235
    move-object v9, v8

    move-object v0, v9

    goto :goto_0

    .line 225
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "engine":Ljavax/script/ScriptEngine;
    :catch_1
    move-exception v9

    move-object v6, v9

    goto :goto_2

    .line 236
    .restart local v7    # "name":Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object v8, v9

    .line 240
    :cond_2
    goto :goto_3

    .line 242
    .end local v7    # "name":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 244
    .end local v4    # "spi":Ljavax/script/ScriptEngineFactory;
    .end local v5    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0
.end method

.method public getEngineFactories()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/script/ScriptEngineFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavax/script/ScriptEngineManager;->engineSpis:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 350
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Ljavax/script/ScriptEngineFactory;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavax/script/ScriptEngineManager;->engineSpis:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/script/ScriptEngineFactory;

    move-object v3, v4

    .line 351
    .local v3, "spi":Ljavax/script/ScriptEngineFactory;
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 352
    goto :goto_0

    .line 353
    .end local v3    # "spi":Ljavax/script/ScriptEngineFactory;
    :cond_0
    move-object v4, v1

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavax/script/ScriptEngineManager;
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Ljavax/script/ScriptEngineManager;->globalScope:Ljavax/script/Bindings;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 179
    return-void
.end method

.method public registerEngineExtension(Ljava/lang/String;Ljavax/script/ScriptEngineFactory;)V
    .locals 7

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    move-object v1, p1

    .local v1, "extension":Ljava/lang/String;
    move-object v2, p2

    .local v2, "factory":Ljavax/script/ScriptEngineFactory;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 394
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavax/script/ScriptEngineManager;->extensionAssociations:Ljava/util/HashMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 395
    return-void
.end method

.method public registerEngineMimeType(Ljava/lang/String;Ljavax/script/ScriptEngineFactory;)V
    .locals 7

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    move-object v1, p1

    .local v1, "type":Ljava/lang/String;
    move-object v2, p2

    .local v2, "factory":Ljavax/script/ScriptEngineFactory;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 380
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavax/script/ScriptEngineManager;->mimeTypeAssociations:Ljava/util/HashMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 381
    return-void
.end method

.method public registerEngineName(Ljava/lang/String;Ljavax/script/ScriptEngineFactory;)V
    .locals 7

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "factory":Ljavax/script/ScriptEngineFactory;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 365
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavax/script/ScriptEngineManager;->nameAssociations:Ljava/util/HashMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 366
    return-void
.end method

.method public setBindings(Ljavax/script/Bindings;)V
    .locals 6

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptEngineManager;
    move-object v1, p1

    .local v1, "bindings":Ljavax/script/Bindings;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 153
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Global scope cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/script/ScriptEngineManager;->globalScope:Ljavax/script/Bindings;

    .line 157
    return-void
.end method
