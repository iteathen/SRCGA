.class Ljavafx/collections/ListChangeBuilder$SingleChange;
.super Ljavafx/collections/ListChangeListener$Change;
.source "ListChangeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/ListChangeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/ListChangeListener$Change",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final change:Ljavafx/collections/ListChangeBuilder$SubChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeBuilder$SubChange",
            "<TE;>;"
        }
    .end annotation
.end field

.field private onChange:Z


# direct methods
.method public constructor <init>(Ljavafx/collections/ListChangeBuilder$SubChange;Ljavafx/collections/ObservableListBase;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeBuilder$SubChange",
            "<TE;>;",
            "Ljavafx/collections/ObservableListBase",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v2, p2

    .local v2, "list":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/collections/ListChangeListener$Change;-><init>(Ljavafx/collections/ObservableList;)V

    .line 569
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/ListChangeBuilder$SingleChange;->change:Ljavafx/collections/ListChangeBuilder$SubChange;

    .line 570
    return-void
.end method

.method private checkState()V
    .locals 5

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/collections/ListChangeBuilder$SingleChange;->onChange:Z

    if-nez v1, :cond_0

    .line 618
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Invalid Change state: next() must be called before inspecting the Change."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 620
    :cond_0
    return-void
.end method


# virtual methods
.method public getFrom()I
    .locals 2

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/ListChangeBuilder$SingleChange;->checkState()V

    .line 589
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$SingleChange;->change:Ljavafx/collections/ListChangeBuilder$SubChange;

    iget v1, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    return v0
.end method

.method protected getPermutation()[I
    .locals 2

    .prologue
    .line 606
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/ListChangeBuilder$SingleChange;->checkState()V

    .line 607
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$SingleChange;->change:Ljavafx/collections/ListChangeBuilder$SubChange;

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->perm:[I

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    return-object v0
.end method

.method public getRemoved()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 600
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/ListChangeBuilder$SingleChange;->checkState()V

    .line 601
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$SingleChange;->change:Ljavafx/collections/ListChangeBuilder$SubChange;

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    return-object v0
.end method

.method public getTo()I
    .locals 2

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/ListChangeBuilder$SingleChange;->checkState()V

    .line 595
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$SingleChange;->change:Ljavafx/collections/ListChangeBuilder$SubChange;

    iget v1, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    return v0
.end method

.method public next()Z
    .locals 3

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/collections/ListChangeBuilder$SingleChange;->onChange:Z

    if-eqz v1, :cond_0

    .line 575
    const/4 v1, 0x0

    move v0, v1

    .line 578
    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    :goto_0
    return v0

    .line 577
    .restart local v0    # "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/collections/ListChangeBuilder$SingleChange;->onChange:Z

    .line 578
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/collections/ListChangeBuilder$SingleChange;->onChange:Z

    .line 584
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 625
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ListChangeBuilder$SingleChange;->change:Ljavafx/collections/ListChangeBuilder$SubChange;

    iget-object v2, v2, Ljavafx/collections/ListChangeBuilder$SubChange;->perm:[I

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 626
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ListChangeBuilder$SingleChange;->change:Ljavafx/collections/ListChangeBuilder$SubChange;

    iget-object v2, v2, Ljavafx/collections/ListChangeBuilder$SubChange;->perm:[I

    invoke-static {v2}, Lcom/sun/javafx/collections/ChangeHelper;->permChangeToString([I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 632
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    return-object v0

    .line 627
    .end local v1    # "ret":Ljava/lang/String;
    .restart local v0    # "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ListChangeBuilder$SingleChange;->change:Ljavafx/collections/ListChangeBuilder$SubChange;

    iget-boolean v2, v2, Ljavafx/collections/ListChangeBuilder$SubChange;->updated:Z

    if-eqz v2, :cond_1

    .line 628
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ListChangeBuilder$SingleChange;->change:Ljavafx/collections/ListChangeBuilder$SubChange;

    iget v2, v2, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ListChangeBuilder$SingleChange;->change:Ljavafx/collections/ListChangeBuilder$SubChange;

    iget v3, v3, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/ChangeHelper;->updateChangeToString(II)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 630
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ListChangeBuilder$SingleChange;->change:Ljavafx/collections/ListChangeBuilder$SubChange;

    iget v2, v2, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ListChangeBuilder$SingleChange;->change:Ljavafx/collections/ListChangeBuilder$SubChange;

    iget v3, v3, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/collections/ListChangeBuilder$SingleChange;->getList()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/ListChangeBuilder$SingleChange;->change:Ljavafx/collections/ListChangeBuilder$SubChange;

    iget-object v5, v5, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    invoke-static {v2, v3, v4, v5}, Lcom/sun/javafx/collections/ChangeHelper;->addRemoveChangeToString(IILjava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public wasUpdated()Z
    .locals 2

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/ListChangeBuilder$SingleChange;->checkState()V

    .line 613
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$SingleChange;->change:Ljavafx/collections/ListChangeBuilder$SubChange;

    iget-boolean v1, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->updated:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder$SingleChange;, "Ljavafx/collections/ListChangeBuilder$SingleChange<TE;>;"
    return v0
.end method
