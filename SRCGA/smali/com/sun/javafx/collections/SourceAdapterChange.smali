.class public Lcom/sun/javafx/collections/SourceAdapterChange;
.super Ljavafx/collections/ListChangeListener$Change;
.source "SourceAdapterChange.java"


# annotations
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
.field private final change:Ljavafx/collections/ListChangeListener$Change;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;"
        }
    .end annotation
.end field

.field private perm:[I


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    move-object v1, p1

    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, p2

    .local v2, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/collections/ListChangeListener$Change;-><init>(Ljavafx/collections/ObservableList;)V

    .line 39
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/collections/SourceAdapterChange;->change:Ljavafx/collections/ListChangeListener$Change;

    .line 40
    return-void
.end method


# virtual methods
.method public getFrom()I
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/SourceAdapterChange;->change:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    return v0
.end method

.method protected getPermutation()[I
    .locals 9

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/SourceAdapterChange;->perm:[I

    if-nez v4, :cond_0

    .line 76
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/SourceAdapterChange;->change:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/SourceAdapterChange;->change:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v4

    move v1, v4

    .line 78
    .local v1, "from":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/SourceAdapterChange;->change:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v4

    move v5, v1

    sub-int/2addr v4, v5

    move v2, v4

    .line 79
    .local v2, "n":I
    move-object v4, v0

    move v5, v2

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/sun/javafx/collections/SourceAdapterChange;->perm:[I

    .line 80
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 81
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/SourceAdapterChange;->perm:[I

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/SourceAdapterChange;->change:Ljavafx/collections/ListChangeListener$Change;

    move v7, v1

    move v8, v3

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljavafx/collections/ListChangeListener$Change;->getPermutation(I)I

    move-result v6

    aput v6, v4, v5

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .line 87
    .end local v1    # "from":I
    .end local v2    # "n":I
    .end local v3    # "i":I
    :cond_0
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/SourceAdapterChange;->perm:[I

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    return-object v0

    .line 84
    .restart local v0    # "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/sun/javafx/collections/SourceAdapterChange;->perm:[I

    goto :goto_1
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
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/SourceAdapterChange;->change:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    return-object v0
.end method

.method public getTo()I
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/SourceAdapterChange;->change:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    return v0
.end method

.method public next()Z
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/collections/SourceAdapterChange;->perm:[I

    .line 45
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/SourceAdapterChange;->change:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/SourceAdapterChange;->change:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/SourceAdapterChange;->change:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    return-object v0
.end method

.method public wasUpdated()Z
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/SourceAdapterChange;->change:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->wasUpdated()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/SourceAdapterChange;, "Lcom/sun/javafx/collections/SourceAdapterChange<TE;>;"
    return v0
.end method
