.class public abstract Ljavafx/scene/control/TablePositionBase;
.super Ljava/lang/Object;
.source "TablePositionBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TC:",
        "Ljavafx/scene/control/TableColumnBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final row:I

.field private final tableColumnRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TTC;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILjavafx/scene/control/TableColumnBase;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITTC;)V"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    move v1, p1

    .local v1, "row":I
    move-object v2, p2

    .local v2, "tableColumn":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 67
    move-object v3, v0

    move v4, v1

    iput v4, v3, Ljavafx/scene/control/TablePositionBase;->row:I

    .line 68
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/TablePositionBase;->tableColumnRef:Ljava/lang/ref/WeakReference;

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 117
    const/4 v5, 0x0

    move v0, v5

    .line 132
    .end local v0    # "this":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    :goto_0
    return v0

    .line 119
    .restart local v0    # "this":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 120
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 123
    :cond_1
    move-object v5, v1

    check-cast v5, Ljavafx/scene/control/TablePositionBase;

    move-object v2, v5

    .line 124
    .local v2, "other":Ljavafx/scene/control/TablePositionBase;
    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/TablePositionBase;->row:I

    move-object v6, v2

    iget v6, v6, Ljavafx/scene/control/TablePositionBase;->row:I

    if-eq v5, v6, :cond_2

    .line 125
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 127
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v5

    move-object v3, v5

    .line 128
    .local v3, "tableColumn":Ljavafx/scene/control/TableColumnBase;, "TTC;"
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v5

    move-object v4, v5

    .line 129
    .local v4, "otherTableColumn":Ljavafx/scene/control/TableColumnBase;
    move-object v5, v3

    move-object v6, v4

    if-eq v5, v6, :cond_4

    move-object v5, v3

    if-eqz v5, :cond_3

    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 130
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 132
    :cond_4
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method public abstract getColumn()I
.end method

.method public getRow()I
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/TablePositionBase;->row:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    return v0
.end method

.method public getTableColumn()Ljavafx/scene/control/TableColumnBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTC;"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TablePositionBase;->tableColumnRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableColumnBase;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    const/4 v3, 0x5

    move v1, v3

    .line 141
    .local v1, "hash":I
    const/16 v3, 0x4f

    move v4, v1

    mul-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/TablePositionBase;->row:I

    add-int/2addr v3, v4

    move v1, v3

    .line 142
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TablePositionBase;->getTableColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v3

    move-object v2, v3

    .line 143
    .local v2, "tableColumn":Ljavafx/scene/control/TableColumnBase;
    const/16 v3, 0x4f

    move v4, v1

    mul-int/2addr v3, v4

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    move v1, v3

    .line 144
    move v3, v1

    move v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    return v0

    .line 143
    .restart local v0    # "this":Ljavafx/scene/control/TablePositionBase;, "Ljavafx/scene/control/TablePositionBase<TTC;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
