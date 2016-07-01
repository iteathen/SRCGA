.class public abstract Ljavafx/collections/transformation/TransformationList;
.super Ljavafx/collections/ObservableListBase;
.source "TransformationList.java"

# interfaces
.implements Ljavafx/collections/ObservableList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/ObservableListBase",
        "<TE;>;",
        "Ljavafx/collections/ObservableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private source:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<+TF;>;"
        }
    .end annotation
.end field

.field private sourceListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TF;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+TF;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/TransformationList;, "Ljavafx/collections/transformation/TransformationList<TE;TF;>;"
    move-object v1, p1

    .local v1, "source":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+TF;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/collections/ObservableListBase;-><init>()V

    .line 64
    move-object v2, v1

    if-nez v2, :cond_0

    .line 65
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 67
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/collections/transformation/TransformationList;->source:Ljavafx/collections/ObservableList;

    .line 68
    move-object v2, v1

    new-instance v3, Ljavafx/collections/WeakListChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v5}, Ljavafx/collections/transformation/TransformationList;->getListener()Ljavafx/collections/ListChangeListener;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/collections/transformation/TransformationList;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/transformation/TransformationList;->lambda$getListener$58(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private getListener()Ljavafx/collections/ListChangeListener;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ListChangeListener",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/TransformationList;, "Ljavafx/collections/transformation/TransformationList<TE;TF;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/TransformationList;->sourceListener:Ljavafx/collections/ListChangeListener;

    if-nez v1, :cond_0

    .line 105
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/collections/transformation/TransformationList$$Lambda$1;->lambdaFactory$(Ljavafx/collections/transformation/TransformationList;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/collections/transformation/TransformationList;->sourceListener:Ljavafx/collections/ListChangeListener;

    .line 109
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/TransformationList;->sourceListener:Ljavafx/collections/ListChangeListener;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/transformation/TransformationList;, "Ljavafx/collections/transformation/TransformationList<TE;TF;>;"
    return-object v0
.end method

.method private synthetic lambda$getListener$58(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/TransformationList;, "Ljavafx/collections/transformation/TransformationList<TE;TF;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/collections/transformation/TransformationList;->sourceChanged(Ljavafx/collections/ListChangeListener$Change;)V

    .line 107
    return-void
.end method


# virtual methods
.method public final getSource()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<+TF;>;"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/TransformationList;, "Ljavafx/collections/transformation/TransformationList<TE;TF;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/TransformationList;->source:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/transformation/TransformationList;, "Ljavafx/collections/transformation/TransformationList<TE;TF;>;"
    return-object v0
.end method

.method public abstract getSourceIndex(I)I
.end method

.method public final getSourceIndexFor(Ljavafx/collections/ObservableList;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/TransformationList;, "Ljavafx/collections/transformation/TransformationList<TE;TF;>;"
    move-object v1, p1

    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<*>;"
    move v2, p2

    .local v2, "index":I
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/collections/transformation/TransformationList;->isInTransformationChain(Ljavafx/collections/ObservableList;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 138
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Provided list is not in the transformation chain of thistransformation list"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 141
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/transformation/TransformationList;->source:Ljavafx/collections/ObservableList;

    move-object v3, v6

    .line 142
    .local v3, "currentSource":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Ljavafx/collections/transformation/TransformationList;->getSourceIndex(I)I

    move-result v6

    move v4, v6

    .line 143
    .local v4, "idx":I
    :goto_0
    move-object v6, v3

    move-object v7, v1

    if-eq v6, v7, :cond_1

    move-object v6, v3

    instance-of v6, v6, Ljavafx/collections/transformation/TransformationList;

    if-eqz v6, :cond_1

    .line 144
    move-object v6, v3

    check-cast v6, Ljavafx/collections/transformation/TransformationList;

    move-object v5, v6

    .line 145
    .local v5, "tSource":Ljavafx/collections/transformation/TransformationList;
    move-object v6, v5

    move v7, v4

    invoke-virtual {v6, v7}, Ljavafx/collections/transformation/TransformationList;->getSourceIndex(I)I

    move-result v6

    move v4, v6

    .line 146
    move-object v6, v5

    iget-object v6, v6, Ljavafx/collections/transformation/TransformationList;->source:Ljavafx/collections/ObservableList;

    move-object v3, v6

    .line 147
    goto :goto_0

    .line 148
    .end local v5    # "tSource":Ljavafx/collections/transformation/TransformationList;
    :cond_1
    move v6, v4

    move v0, v6

    .end local v0    # "this":Ljavafx/collections/transformation/TransformationList;, "Ljavafx/collections/transformation/TransformationList<TE;TF;>;"
    return v0
.end method

.method public final isInTransformationChain(Ljavafx/collections/ObservableList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/TransformationList;, "Ljavafx/collections/transformation/TransformationList<TE;TF;>;"
    move-object v1, p1

    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<*>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/TransformationList;->source:Ljavafx/collections/ObservableList;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 91
    const/4 v3, 0x1

    move v0, v3

    .line 100
    .end local v0    # "this":Ljavafx/collections/transformation/TransformationList;, "Ljavafx/collections/transformation/TransformationList<TE;TF;>;"
    :goto_0
    return v0

    .line 93
    .restart local v0    # "this":Ljavafx/collections/transformation/TransformationList;, "Ljavafx/collections/transformation/TransformationList<TE;TF;>;"
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/TransformationList;->source:Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 94
    .local v2, "currentSource":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1
    move-object v3, v2

    instance-of v3, v3, Ljavafx/collections/transformation/TransformationList;

    if-eqz v3, :cond_2

    .line 95
    move-object v3, v2

    check-cast v3, Ljavafx/collections/transformation/TransformationList;

    iget-object v3, v3, Ljavafx/collections/transformation/TransformationList;->source:Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 96
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 97
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 100
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method protected abstract sourceChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TF;>;)V"
        }
    .end annotation
.end method
