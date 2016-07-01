.class final Landroid/support/multidex/MultiDex$V19;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/multidex/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V19"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Landroid/support/multidex/MultiDex$V19;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "x0":Ljava/lang/ClassLoader;
    move-object v1, p1

    .local v1, "x1":Ljava/util/List;
    move-object v2, p2

    .local v2, "x2":Ljava/io/File;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/multidex/MultiDex$V19;->install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method private static install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 380
    move-object/from16 v0, p0

    .local v0, "loader":Ljava/lang/ClassLoader;
    move-object/from16 v1, p1

    .local v1, "additionalClassPathEntries":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v2, p2

    .local v2, "optimizedDirectory":Ljava/io/File;
    move-object v9, v0

    const-string v10, "pathList"

    invoke-static {v9, v10}, Landroid/support/multidex/MultiDex;->access$300(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    move-object v3, v9

    .line 381
    .local v3, "pathListField":Ljava/lang/reflect/Field;
    move-object v9, v3

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    .line 382
    .local v4, "dexPathList":Ljava/lang/Object;
    new-instance v9, Ljava/util/ArrayList;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v9

    .line 383
    .local v5, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    move-object v9, v4

    const-string v10, "dexElements"

    move-object v11, v4

    new-instance v12, Ljava/util/ArrayList;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v1

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v13, v2

    move-object v14, v5

    invoke-static {v11, v12, v13, v14}, Landroid/support/multidex/MultiDex$V19;->makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/support/multidex/MultiDex;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    move-object v9, v5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 387
    move-object v9, v5

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/IOException;

    move-object v7, v9

    .line 388
    .local v7, "e":Ljava/io/IOException;
    const-string v9, "MultiDex"

    const-string v10, "Exception in makeDexElement"

    move-object v11, v7

    invoke-static {v9, v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v9

    .line 389
    goto :goto_0

    .line 390
    .end local v7    # "e":Ljava/io/IOException;
    :cond_0
    move-object v9, v0

    const-string v10, "dexElementsSuppressedExceptions"

    invoke-static {v9, v10}, Landroid/support/multidex/MultiDex;->access$300(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    move-object v6, v9

    .line 392
    .local v6, "suppressedExceptionsField":Ljava/lang/reflect/Field;
    move-object v9, v6

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/io/IOException;

    check-cast v9, [Ljava/io/IOException;

    move-object v7, v9

    .line 395
    .local v7, "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    move-object v9, v7

    if-nez v9, :cond_2

    .line 396
    move-object v9, v5

    move-object v10, v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/io/IOException;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/io/IOException;

    move-object v7, v9

    .line 409
    :goto_1
    move-object v9, v6

    move-object v10, v0

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    .end local v6    # "suppressedExceptionsField":Ljava/lang/reflect/Field;
    .end local v7    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    :cond_1
    return-void

    .line 400
    .restart local v6    # "suppressedExceptionsField":Ljava/lang/reflect/Field;
    .restart local v7    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    :cond_2
    move-object v9, v5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object v10, v7

    array-length v10, v10

    add-int/2addr v9, v10

    new-array v9, v9, [Ljava/io/IOException;

    move-object v8, v9

    .line 403
    .local v8, "combined":[Ljava/io/IOException;
    move-object v9, v5

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .line 404
    move-object v9, v7

    const/4 v10, 0x0

    move-object v11, v8

    move-object v12, v5

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object v13, v7

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    move-object v9, v8

    move-object v7, v9

    goto :goto_1
.end method

.method private static makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "dexPathList":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    move-object v2, p2

    .local v2, "optimizedDirectory":Ljava/io/File;
    move-object v3, p3

    .local v3, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    move-object v5, v0

    const-string v6, "makeDexElements"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-class v10, Ljava/util/ArrayList;

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    const-class v10, Ljava/io/File;

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    const-class v10, Ljava/util/ArrayList;

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Landroid/support/multidex/MultiDex;->access$500(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v4, v5

    .line 426
    .local v4, "makeDexElements":Ljava/lang/reflect/Method;
    move-object v5, v4

    move-object v6, v0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v3

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    .end local v0    # "dexPathList":Ljava/lang/Object;
    return-object v0
.end method
