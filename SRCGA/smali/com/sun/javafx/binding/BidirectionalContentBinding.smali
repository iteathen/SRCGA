.class public Lcom/sun/javafx/binding/BidirectionalContentBinding;
.super Ljava/lang/Object;
.source "BidirectionalContentBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;,
        Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;,
        Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "list1":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v1, p1

    .local v1, "list2":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/BidirectionalContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    new-instance v3, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;-><init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    move-object v2, v3

    .line 51
    .local v2, "binding":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding<TE;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v3

    .line 52
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 53
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 54
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "list1":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    return-object v0
.end method

.method public static bind(Ljavafx/collections/ObservableMap;Ljavafx/collections/ObservableMap;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "map1":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "map2":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/BidirectionalContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    new-instance v3, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/ObservableMap;)V

    move-object v2, v3

    .line 70
    .local v2, "binding":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding<TK;TV;>;"
    move-object v3, v0

    invoke-interface {v3}, Ljavafx/collections/ObservableMap;->clear()V

    .line 71
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->putAll(Ljava/util/Map;)V

    .line 72
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 73
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 74
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "map1":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public static bind(Ljavafx/collections/ObservableSet;Ljavafx/collections/ObservableSet;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "set1":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "set2":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/BidirectionalContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    new-instance v3, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;-><init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/ObservableSet;)V

    move-object v2, v3

    .line 60
    .local v2, "binding":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding<TE;>;"
    move-object v3, v0

    invoke-interface {v3}, Ljavafx/collections/ObservableSet;->clear()V

    .line 61
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 62
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 63
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 64
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "set1":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    return-object v0
.end method

.method private static checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "property1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "property2":Ljava/lang/Object;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 41
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Both parameters must be specified."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_1
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_2

    .line 44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot bind object to itself"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_2
    return-void
.end method

.method public static unbind(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "obj1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "obj2":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/binding/BidirectionalContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    move-object v5, v0

    instance-of v5, v5, Ljavafx/collections/ObservableList;

    if-eqz v5, :cond_1

    move-object v5, v1

    instance-of v5, v5, Ljavafx/collections/ObservableList;

    if-eqz v5, :cond_1

    .line 80
    move-object v5, v0

    check-cast v5, Ljavafx/collections/ObservableList;

    move-object v2, v5

    .line 81
    .local v2, "list1":Ljavafx/collections/ObservableList;
    move-object v5, v1

    check-cast v5, Ljavafx/collections/ObservableList;

    move-object v3, v5

    .line 82
    .local v3, "list2":Ljavafx/collections/ObservableList;
    new-instance v5, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;-><init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    move-object v4, v5

    .line 83
    .local v4, "binding":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 84
    move-object v5, v3

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 85
    .line 98
    .end local v2    # "list1":Ljavafx/collections/ObservableList;
    .end local v3    # "list2":Ljavafx/collections/ObservableList;
    .end local v4    # "binding":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    move-object v5, v0

    instance-of v5, v5, Ljavafx/collections/ObservableSet;

    if-eqz v5, :cond_2

    move-object v5, v1

    instance-of v5, v5, Ljavafx/collections/ObservableSet;

    if-eqz v5, :cond_2

    .line 86
    move-object v5, v0

    check-cast v5, Ljavafx/collections/ObservableSet;

    move-object v2, v5

    .line 87
    .local v2, "set1":Ljavafx/collections/ObservableSet;
    move-object v5, v1

    check-cast v5, Ljavafx/collections/ObservableSet;

    move-object v3, v5

    .line 88
    .local v3, "set2":Ljavafx/collections/ObservableSet;
    new-instance v5, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;-><init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/ObservableSet;)V

    move-object v4, v5

    .line 89
    .local v4, "binding":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    .line 90
    move-object v5, v3

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    .line 91
    goto :goto_0

    .end local v2    # "set1":Ljavafx/collections/ObservableSet;
    .end local v3    # "set2":Ljavafx/collections/ObservableSet;
    .end local v4    # "binding":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;
    :cond_2
    move-object v5, v0

    instance-of v5, v5, Ljavafx/collections/ObservableMap;

    if-eqz v5, :cond_0

    move-object v5, v1

    instance-of v5, v5, Ljavafx/collections/ObservableMap;

    if-eqz v5, :cond_0

    .line 92
    move-object v5, v0

    check-cast v5, Ljavafx/collections/ObservableMap;

    move-object v2, v5

    .line 93
    .local v2, "map1":Ljavafx/collections/ObservableMap;
    move-object v5, v1

    check-cast v5, Ljavafx/collections/ObservableMap;

    move-object v3, v5

    .line 94
    .local v3, "map2":Ljavafx/collections/ObservableMap;
    new-instance v5, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/ObservableMap;)V

    move-object v4, v5

    .line 95
    .local v4, "binding":Lcom/sun/javafx/binding/BidirectionalContentBinding$MapContentBinding;
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    .line 96
    move-object v5, v3

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    goto :goto_0
.end method
