.class public Lcom/sun/javafx/sg/prism/NodePath;
.super Ljava/lang/Object;
.source "NodePath.java"


# instance fields
.field private path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/sg/prism/NGNode;",
            ">;"
        }
    .end annotation
.end field

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NodePath;->path:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/sun/javafx/sg/prism/NGNode;)V
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v1, p1

    .local v1, "n":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NodePath;->path:Ljava/util/List;

    const/4 v3, 0x0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 73
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/NodePath;->position:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/sg/prism/NodePath;->position:I

    .line 74
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/javafx/sg/prism/NodePath;->position:I

    .line 68
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NodePath;->path:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 69
    return-void
.end method

.method public getCurrentNode()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NodePath;->path:Ljava/util/List;

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/NodePath;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/sg/prism/NGNode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NodePath;
    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/NodePath;->position:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NodePath;->path:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NodePath;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NodePath;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NodePath;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NodePath;->path:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NodePath;
    return v0
.end method

.method public last()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NodePath;->path:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NodePath;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NodePath;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NodePath;->path:Ljava/util/List;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NodePath;->path:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/sg/prism/NGNode;

    goto :goto_0
.end method

.method public next()V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NodePath;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 57
    :cond_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/sg/prism/NodePath;->position:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/javafx/sg/prism/NodePath;->position:I

    .line 58
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NodePath;->path:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    iput v2, v1, Lcom/sun/javafx/sg/prism/NodePath;->position:I

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NodePath;->path:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NodePath;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NodePath;->path:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NodePath;
    return-object v0
.end method
