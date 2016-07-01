.class public Lcom/sun/javafx/binding/ContentBinding;
.super Ljava/lang/Object;
.source "ContentBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;,
        Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;,
        Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Ljava/util/List;Ljavafx/collections/ObservableList;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljavafx/collections/ObservableList",
            "<+TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "list1":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v1, p1

    .local v1, "list2":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+TE;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    new-instance v3, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;-><init>(Ljava/util/List;)V

    move-object v2, v3

    .line 52
    .local v2, "contentBinding":Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$ListContentBinding<TE;>;"
    move-object v3, v0

    instance-of v3, v3, Ljavafx/collections/ObservableList;

    if-eqz v3, :cond_0

    .line 53
    move-object v3, v0

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v3

    .line 58
    :goto_0
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 59
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 60
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "list1":Ljava/util/List;, "Ljava/util/List<TE;>;"
    return-object v0

    .line 55
    .restart local v0    # "list1":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_0
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 56
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    goto :goto_0
.end method

.method public static bind(Ljava/util/Map;Ljavafx/collections/ObservableMap;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljavafx/collections/ObservableMap",
            "<+TK;+TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "map1":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v1, p1

    .local v1, "map2":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<+TK;+TV;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    new-instance v3, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;-><init>(Ljava/util/Map;)V

    move-object v2, v3

    .line 76
    .local v2, "contentBinding":Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$MapContentBinding<TK;TV;>;"
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 77
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 78
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    .line 79
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 80
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "map1":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    return-object v0
.end method

.method public static bind(Ljava/util/Set;Ljavafx/collections/ObservableSet;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljavafx/collections/ObservableSet",
            "<+TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "set1":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    move-object v1, p1

    .local v1, "set2":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<+TE;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    new-instance v3, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;-><init>(Ljava/util/Set;)V

    move-object v2, v3

    .line 66
    .local v2, "contentBinding":Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$SetContentBinding<TE;>;"
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 67
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 68
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    .line 69
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 70
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "set1":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    return-object v0
.end method

.method private static checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "property1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "property2":Ljava/lang/Object;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 42
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Both parameters must be specified."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :cond_1
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_2

    .line 45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot bind object to itself"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_2
    return-void
.end method

.method public static unbind(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "obj1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "obj2":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/ContentBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    move-object v2, v0

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljavafx/collections/ObservableList;

    if-eqz v2, :cond_1

    .line 86
    move-object v2, v1

    check-cast v2, Ljavafx/collections/ObservableList;

    new-instance v3, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Ljava/util/Set;

    if-eqz v2, :cond_2

    move-object v2, v1

    instance-of v2, v2, Ljavafx/collections/ObservableSet;

    if-eqz v2, :cond_2

    .line 88
    move-object v2, v1

    check-cast v2, Ljavafx/collections/ObservableSet;

    new-instance v3, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    check-cast v5, Ljava/util/Set;

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;-><init>(Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    goto :goto_0

    .line 89
    :cond_2
    move-object v2, v0

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Ljavafx/collections/ObservableMap;

    if-eqz v2, :cond_0

    .line 90
    move-object v2, v1

    check-cast v2, Ljavafx/collections/ObservableMap;

    new-instance v3, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    goto :goto_0
.end method
