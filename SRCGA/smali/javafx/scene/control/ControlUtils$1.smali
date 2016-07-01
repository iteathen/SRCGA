.class final Ljavafx/scene/control/ControlUtils$1;
.super Ljavafx/collections/ListChangeListener$Change;
.source "ControlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/ControlUtils;->buildClearAndSelectChange(Ljavafx/collections/ObservableList;Ljava/util/List;I)Ljavafx/collections/ListChangeListener$Change;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/collections/ListChangeListener$Change",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final EMPTY_PERM:[I

.field private atFirstRange:Z

.field private final firstRemovedRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private from:I

.field private invalid:Z

.field private final removedSize:I

.field private final secondRemovedRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic val$removed:Ljava/util/List;

.field final synthetic val$retainedRow:I


# direct methods
.method constructor <init>(Ljavafx/collections/ObservableList;Ljava/util/List;I)V
    .locals 9

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlUtils$1;
    move-object v1, p1

    .local v1, "x0":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/scene/control/ControlUtils$1;->val$removed:Ljava/util/List;

    move-object v5, v0

    move v6, v3

    iput v6, v5, Ljavafx/scene/control/ControlUtils$1;->val$retainedRow:I

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavafx/collections/ListChangeListener$Change;-><init>(Ljavafx/collections/ObservableList;)V

    .line 73
    move-object v5, v0

    const/4 v6, 0x0

    new-array v6, v6, [I

    iput-object v6, v5, Ljavafx/scene/control/ControlUtils$1;->EMPTY_PERM:[I

    .line 75
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ControlUtils$1;->val$removed:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v5, Ljavafx/scene/control/ControlUtils$1;->removedSize:I

    .line 80
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Ljavafx/scene/control/ControlUtils$1;->invalid:Z

    .line 81
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Ljavafx/scene/control/ControlUtils$1;->atFirstRange:Z

    .line 83
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Ljavafx/scene/control/ControlUtils$1;->from:I

    .line 86
    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/ControlUtils$1;->val$retainedRow:I

    move-object v6, v0

    iget v6, v6, Ljavafx/scene/control/ControlUtils$1;->removedSize:I

    if-lt v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/ControlUtils$1;->removedSize:I

    :goto_0
    move v4, v5

    .line 89
    .local v4, "midIndex":I
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ControlUtils$1;->val$removed:Ljava/util/List;

    const/4 v7, 0x0

    move v8, v4

    invoke-interface {v6, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/control/ControlUtils$1;->firstRemovedRange:Ljava/util/List;

    .line 90
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ControlUtils$1;->val$removed:Ljava/util/List;

    move v7, v4

    move-object v8, v0

    iget v8, v8, Ljavafx/scene/control/ControlUtils$1;->removedSize:I

    invoke-interface {v6, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/control/ControlUtils$1;->secondRemovedRange:Ljava/util/List;

    .line 91
    return-void

    .line 86
    .end local v4    # "midIndex":I
    :cond_0
    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/ControlUtils$1;->val$retainedRow:I

    if-gez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/ControlUtils$1;->val$retainedRow:I

    goto :goto_0
.end method

.method private checkState()V
    .locals 5

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlUtils$1;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/ControlUtils$1;->invalid:Z

    if-eqz v1, :cond_0

    .line 145
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Invalid Change state: next() must be called before inspecting the Change."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public getFrom()I
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlUtils$1;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ControlUtils$1;->checkState()V

    .line 95
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/ControlUtils$1;->from:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ControlUtils$1;
    return v0
.end method

.method protected getPermutation()[I
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlUtils$1;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ControlUtils$1;->checkState()V

    .line 113
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ControlUtils$1;->EMPTY_PERM:[I

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ControlUtils$1;
    return-object v0
.end method

.method public getRemoved()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlUtils$1;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ControlUtils$1;->checkState()V

    .line 104
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/ControlUtils$1;->atFirstRange:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ControlUtils$1;->firstRemovedRange:Ljava/util/List;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ControlUtils$1;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ControlUtils$1;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ControlUtils$1;->secondRemovedRange:Ljava/util/List;

    goto :goto_0
.end method

.method public getRemovedSize()I
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlUtils$1;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/ControlUtils$1;->atFirstRange:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ControlUtils$1;->firstRemovedRange:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ControlUtils$1;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/ControlUtils$1;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ControlUtils$1;->secondRemovedRange:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getTo()I
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlUtils$1;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ControlUtils$1;->getFrom()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ControlUtils$1;
    return v0
.end method

.method public next()Z
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlUtils$1;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/ControlUtils$1;->invalid:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/ControlUtils$1;->atFirstRange:Z

    if-eqz v1, :cond_0

    .line 118
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/control/ControlUtils$1;->invalid:Z

    .line 122
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/control/ControlUtils$1;->from:I

    .line 123
    const/4 v1, 0x1

    move v0, v1

    .line 135
    .end local v0    # "this":Ljavafx/scene/control/ControlUtils$1;
    :goto_0
    return v0

    .line 126
    .restart local v0    # "this":Ljavafx/scene/control/ControlUtils$1;
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/ControlUtils$1;->atFirstRange:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ControlUtils$1;->secondRemovedRange:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/control/ControlUtils$1;->atFirstRange:Z

    .line 131
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Ljavafx/scene/control/ControlUtils$1;->from:I

    .line 132
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlUtils$1;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/ControlUtils$1;->invalid:Z

    .line 140
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/ControlUtils$1;->atFirstRange:Z

    .line 141
    return-void
.end method
