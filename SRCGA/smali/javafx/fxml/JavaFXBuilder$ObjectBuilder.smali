.class final Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
.super Ljava/util/AbstractMap;
.source "JavaFXBuilderFactory.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/JavaFXBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ObjectBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljavafx/util/Builder",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private builder:Ljava/lang/Object;

.field private final containers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/fxml/JavaFXBuilder;


# direct methods
.method private constructor <init>(Ljavafx/fxml/JavaFXBuilder;)V
    .locals 8

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/fxml/JavaFXBuilder;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->this$0:Ljavafx/fxml/JavaFXBuilder;

    move-object v3, v0

    invoke-direct {v3}, Ljava/util/AbstractMap;-><init>()V

    .line 247
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->containers:Ljava/util/Map;

    .line 248
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->builder:Ljava/lang/Object;

    .line 253
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Ljavafx/fxml/JavaFXBuilder;->access$000(Ljavafx/fxml/JavaFXBuilder;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    # getter for: Ljavafx/fxml/JavaFXBuilder;->NO_ARGS:[Ljava/lang/Object;
    invoke-static {}, Ljavafx/fxml/JavaFXBuilder;->access$100()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->builder:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .line 258
    return-void

    .line 254
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creation of the builder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-static {v6}, Ljavafx/fxml/JavaFXBuilder;->access$200(Ljavafx/fxml/JavaFXBuilder;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method synthetic constructor <init>(Ljavafx/fxml/JavaFXBuilder;Ljavafx/fxml/JavaFXBuilder$1;)V
    .locals 5

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    move-object v1, p1

    .local v1, "x0":Ljavafx/fxml/JavaFXBuilder;
    move-object v2, p2

    .local v2, "x1":Ljavafx/fxml/JavaFXBuilder$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;-><init>(Ljavafx/fxml/JavaFXBuilder;)V

    return-void
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->containers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v2, v4

    .line 265
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v4, v0

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 266
    goto :goto_0

    .line 270
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->this$0:Ljavafx/fxml/JavaFXBuilder;

    invoke-static {v4}, Ljavafx/fxml/JavaFXBuilder;->access$300(Ljavafx/fxml/JavaFXBuilder;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->builder:Ljava/lang/Object;

    # getter for: Ljavafx/fxml/JavaFXBuilder;->NO_ARGS:[Ljava/lang/Object;
    invoke-static {}, Ljavafx/fxml/JavaFXBuilder;->access$100()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 274
    .local v1, "res":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->properties:Ljava/util/Map;

    if-eqz v4, :cond_1

    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/Node;

    if-eqz v4, :cond_1

    .line 275
    move-object v4, v1

    check-cast v4, Ljavafx/scene/Node;

    invoke-virtual {v4}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->properties:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->builder:Ljava/lang/Object;

    .line 283
    .line 285
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    return-object v0

    .line 277
    .end local v1    # "res":Ljava/lang/Object;
    .restart local v0    # "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 278
    .local v2, "exception":Ljava/lang/reflect/InvocationTargetException;
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .end local v2    # "exception":Ljava/lang/reflect/InvocationTargetException;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->builder:Ljava/lang/Object;

    move-object v4, v3

    throw v4

    .line 279
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 280
    .local v2, "exception":Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->getTemporaryContainer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    return v0

    .restart local v0    # "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->getTemporaryContainer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    return-object v0
.end method

.method getReadOnlyProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    move-object v1, p1

    .local v1, "propName":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->this$0:Ljavafx/fxml/JavaFXBuilder;

    invoke-static {v7}, Ljavafx/fxml/JavaFXBuilder;->access$600(Ljavafx/fxml/JavaFXBuilder;)Ljava/util/Map;

    move-result-object v7

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move-object v0, v7

    .line 415
    .end local v0    # "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    :goto_0
    return-object v0

    .line 373
    .restart local v0    # "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->this$0:Ljavafx/fxml/JavaFXBuilder;

    invoke-static {v7}, Ljavafx/fxml/JavaFXBuilder;->access$700(Ljavafx/fxml/JavaFXBuilder;)Ljava/util/Map;

    move-result-object v7

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    move-object v2, v7

    .line 374
    .local v2, "getter":Ljava/lang/reflect/Method;
    move-object v7, v2

    if-nez v7, :cond_2

    .line 375
    const/4 v7, 0x0

    move-object v3, v7

    .line 376
    .local v3, "setter":Ljava/lang/reflect/Method;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->this$0:Ljavafx/fxml/JavaFXBuilder;

    invoke-virtual {v7}, Ljavafx/fxml/JavaFXBuilder;->getTargetClass()Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    .line 377
    .local v4, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 379
    .local v5, "suffix":Ljava/lang/String;
    move-object v7, v4

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # getter for: Ljavafx/fxml/JavaFXBuilder;->NO_SIG:[Ljava/lang/Class;
    invoke-static {}, Ljavafx/fxml/JavaFXBuilder;->access$800()[Ljava/lang/Class;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lsun/reflect/misc/MethodUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v2, v7

    .line 380
    move-object v7, v4

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lsun/reflect/misc/MethodUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v3, v7

    .line 382
    .line 383
    :goto_1
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 384
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->this$0:Ljavafx/fxml/JavaFXBuilder;

    invoke-static {v7}, Ljavafx/fxml/JavaFXBuilder;->access$700(Ljavafx/fxml/JavaFXBuilder;)Ljava/util/Map;

    move-result-object v7

    move-object v8, v1

    move-object v9, v2

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 385
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->this$0:Ljavafx/fxml/JavaFXBuilder;

    invoke-static {v7}, Ljavafx/fxml/JavaFXBuilder;->access$600(Ljavafx/fxml/JavaFXBuilder;)Ljava/util/Map;

    move-result-object v7

    move-object v8, v1

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 387
    :cond_1
    move-object v7, v3

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_0

    .line 381
    :catch_0
    move-exception v7

    move-object v6, v7

    goto :goto_1

    .line 391
    .end local v3    # "setter":Ljava/lang/reflect/Method;
    .end local v4    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "suffix":Ljava/lang/String;
    :cond_2
    move-object v7, v2

    if-nez v7, :cond_5

    .line 394
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->this$0:Ljavafx/fxml/JavaFXBuilder;

    move-object v8, v1

    invoke-static {v7, v8}, Ljavafx/fxml/JavaFXBuilder;->access$500(Ljavafx/fxml/JavaFXBuilder;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v4, v7

    .line 395
    .local v4, "m":Ljava/lang/reflect/Method;
    move-object v7, v4

    if-nez v7, :cond_3

    .line 396
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_0

    .line 398
    :cond_3
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v3, v7

    .line 399
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_4

    const-class v7, Ljava/util/List;

    move-object v3, v7

    .line 400
    .line 404
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_4
    :goto_2
    const-class v7, Ljavafx/collections/ObservableMap;

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 405
    new-instance v7, Ljava/util/HashMap;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 401
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    move-object v3, v7

    .restart local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2

    .line 406
    :cond_6
    const-class v7, Ljava/util/Map;

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 407
    new-instance v7, Ljava/util/HashMap;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v0, v7

    goto/16 :goto_0

    .line 408
    :cond_7
    const-class v7, Ljavafx/collections/ObservableList;

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 409
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 410
    :cond_8
    const-class v7, Ljava/util/List;

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 411
    new-instance v7, Ljava/util/ArrayList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v7

    goto/16 :goto_0

    .line 412
    :cond_9
    const-class v7, Ljava/util/Set;

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 413
    new-instance v7, Ljava/util/HashSet;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object v0, v7

    goto/16 :goto_0

    .line 415
    :cond_a
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_0
.end method

.method public getTemporaryContainer(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    move-object v1, p1

    .local v1, "propName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->containers:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 426
    .local v2, "o":Ljava/lang/Object;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 427
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->getReadOnlyProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 428
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 429
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->containers:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 433
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 318
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    move-object/from16 v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "value":Ljava/lang/Object;
    const-class v9, Ljavafx/scene/Node;

    move-object v10, v0

    iget-object v10, v10, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->this$0:Ljavafx/fxml/JavaFXBuilder;

    invoke-virtual {v10}, Ljavafx/fxml/JavaFXBuilder;->getTargetClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "properties"

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 319
    move-object v9, v0

    move-object v10, v2

    check-cast v10, Ljava/util/Map;

    iput-object v10, v9, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->properties:Ljava/util/Map;

    .line 320
    const/4 v9, 0x0

    move-object v0, v9

    .line 362
    .end local v0    # "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    :goto_0
    return-object v0

    .line 323
    .restart local v0    # "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    :cond_0
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->this$0:Ljavafx/fxml/JavaFXBuilder;

    invoke-static {v9}, Ljavafx/fxml/JavaFXBuilder;->access$400(Ljavafx/fxml/JavaFXBuilder;)Ljava/util/Map;

    move-result-object v9

    move-object v10, v1

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Method;

    move-object v3, v9

    .line 324
    .local v3, "m":Ljava/lang/reflect/Method;
    move-object v9, v3

    if-nez v9, :cond_1

    .line 325
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->this$0:Ljavafx/fxml/JavaFXBuilder;

    move-object v10, v1

    invoke-static {v9, v10}, Ljavafx/fxml/JavaFXBuilder;->access$500(Ljavafx/fxml/JavaFXBuilder;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v3, v9

    .line 326
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->this$0:Ljavafx/fxml/JavaFXBuilder;

    invoke-static {v9}, Ljavafx/fxml/JavaFXBuilder;->access$400(Ljavafx/fxml/JavaFXBuilder;)Ljava/util/Map;

    move-result-object v9

    move-object v10, v1

    move-object v11, v3

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 329
    :cond_1
    move-object v9, v3

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v4, v9

    .line 335
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 337
    move-object v9, v2

    instance-of v9, v9, Ljava/util/List;

    if-eqz v9, :cond_2

    .line 338
    move-object v9, v2

    check-cast v9, Ljava/util/List;

    move-object v5, v9

    .line 343
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_1
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    move-object v6, v9

    .line 344
    .local v6, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v9, v6

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .line 345
    .local v7, "array":Ljava/lang/Object;
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_2
    move v9, v8

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 346
    move-object v9, v7

    move v10, v8

    move-object v11, v5

    move v12, v8

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v6

    invoke-static {v11, v12}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 345
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 340
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "array":Ljava/lang/Object;
    .end local v8    # "i":I
    :cond_2
    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    goto :goto_1

    .line 348
    .restart local v6    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "array":Ljava/lang/Object;
    .restart local v8    # "i":I
    :cond_3
    move-object v9, v7

    move-object v2, v9

    .line 351
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "array":Ljava/lang/Object;
    .end local v8    # "i":I
    :cond_4
    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->builder:Ljava/lang/Object;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v2

    move-object v15, v4

    invoke-static {v14, v15}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 355
    .line 357
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    const/4 v9, 0x0

    move-object v0, v9

    goto/16 :goto_0

    .line 352
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 353
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-class v9, Ljavafx/fxml/JavaFXBuilder;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Method "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v3

    .line 354
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v4

    .line 353
    invoke-virtual {v9, v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 358
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 360
    .local v3, "e":Ljava/lang/Exception;
    const-class v9, Ljavafx/fxml/JavaFXBuilder;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to set "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->this$0:Ljavafx/fxml/JavaFXBuilder;

    .line 361
    invoke-virtual {v12}, Ljavafx/fxml/JavaFXBuilder;->getTargetClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " using "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;->this$0:Ljavafx/fxml/JavaFXBuilder;

    invoke-static {v12}, Ljavafx/fxml/JavaFXBuilder;->access$200(Ljavafx/fxml/JavaFXBuilder;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v3

    .line 360
    invoke-virtual {v9, v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    const/4 v9, 0x0

    move-object v0, v9

    goto/16 :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    move-object v1, p1

    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public size()I
    .locals 4

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method
