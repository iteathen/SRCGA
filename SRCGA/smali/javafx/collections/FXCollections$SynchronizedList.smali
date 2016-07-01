.class Ljavafx/collections/FXCollections$SynchronizedList;
.super Ljava/lang/Object;
.source "FXCollections.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final backingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mutex:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 980
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v2, p2

    .local v2, "mutex":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 981
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    .line 982
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    .line 983
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 1098
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 1099
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1100
    move-object v5, v3

    monitor-exit v5

    .line 1101
    return-void

    .line 1100
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 1027
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1028
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return v0

    .line 1029
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1055
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 1056
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v5

    move-object v6, v3

    monitor-exit v6

    move v0, v5

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return v0

    .line 1058
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1048
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1049
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return v0

    .line 1050
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 1077
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 1078
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1079
    move-object v3, v1

    monitor-exit v3

    .line 1080
    return-void

    .line 1079
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 1001
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1002
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return v0

    .line 1003
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1041
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1042
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return v0

    .line 1043
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 1160
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1161
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return v0

    .line 1162
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public get(I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1084
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1085
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return-object v0

    .line 1086
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 1153
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 1154
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return v0

    .line 1155
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 7

    .prologue
    .line 1112
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1113
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return v0

    .line 1114
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    .line 994
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 995
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return v0

    .line 996
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1008
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 7

    .prologue
    .line 1119
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1120
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return v0

    .line 1121
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1126
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1131
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1132
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return-object v0

    .line 1133
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1105
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1106
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return-object v0

    .line 1107
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 1034
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1035
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return v0

    .line 1036
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1063
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1064
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return v0

    .line 1065
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1070
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1071
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return v0

    .line 1072
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 1091
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 1092
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v3

    monitor-exit v6

    move-object v0, v5

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return-object v0

    .line 1093
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public size()I
    .locals 6

    .prologue
    .line 987
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 988
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return v0

    .line 989
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public subList(II)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1138
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    monitor-enter v5

    .line 1139
    :try_start_0
    new-instance v5, Ljavafx/collections/FXCollections$SynchronizedList;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move v8, v1

    move v9, v2

    invoke-interface {v7, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Ljavafx/collections/FXCollections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    move-object v6, v3

    monitor-exit v6

    move-object v0, v5

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return-object v0

    .line 1141
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1013
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 1014
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return-object v0

    .line 1015
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1020
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1021
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return-object v0

    .line 1022
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1146
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 1147
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedList;->backingList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    return-object v0

    .line 1148
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedList;, "Ljavafx/collections/FXCollections$SynchronizedList<TT;>;"
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method
