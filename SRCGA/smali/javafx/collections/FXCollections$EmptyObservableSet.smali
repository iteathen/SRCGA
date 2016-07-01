.class Ljavafx/collections/FXCollections$EmptyObservableSet;
.super Ljava/util/AbstractSet;
.source "FXCollections.java"

# interfaces
.implements Ljavafx/collections/ObservableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyObservableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljavafx/collections/ObservableSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1558
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/AbstractSet;-><init>()V

    .line 1559
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "listener"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 1563
    .local p0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    return-void
.end method

.method public addListener(Ljavafx/collections/SetChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1571
    .local p0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    .local p1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1589
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1594
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 1584
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1611
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    new-instance v1, Ljavafx/collections/FXCollections$EmptyObservableSet$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$EmptyObservableSet$1;-><init>(Ljavafx/collections/FXCollections$EmptyObservableSet;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "listener"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 1567
    .local p0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    return-void
.end method

.method public removeListener(Ljavafx/collections/SetChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1575
    .local p0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    .local p1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1579
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1599
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 1604
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TE;"
    move-object v2, v1

    array-length v2, v2

    if-lez v2, :cond_0

    .line 1605
    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 1606
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableSet;, "Ljavafx/collections/FXCollections$EmptyObservableSet<TE;>;"
    return-object v0
.end method
