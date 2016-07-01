.class public Lcom/sun/javafx/scene/control/SizeLimitedList;
.super Ljava/lang/Object;
.source "SizeLimitedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final backingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SizeLimitedList;, "Lcom/sun/javafx/scene/control/SizeLimitedList<TE;>;"
    move v1, p1

    .local v1, "maxSize":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/scene/control/SizeLimitedList;->maxSize:I

    .line 46
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/SizeLimitedList;->backingList:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SizeLimitedList;, "Lcom/sun/javafx/scene/control/SizeLimitedList<TE;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/SizeLimitedList;->backingList:Ljava/util/List;

    const/4 v3, 0x0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 56
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/SizeLimitedList;->backingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/SizeLimitedList;->maxSize:I

    if-le v2, v3, :cond_0

    .line 57
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/SizeLimitedList;->backingList:Ljava/util/List;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/SizeLimitedList;->maxSize:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 59
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SizeLimitedList;, "Lcom/sun/javafx/scene/control/SizeLimitedList<TE;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/SizeLimitedList;->backingList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/SizeLimitedList;, "Lcom/sun/javafx/scene/control/SizeLimitedList<TE;>;"
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SizeLimitedList;, "Lcom/sun/javafx/scene/control/SizeLimitedList<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/SizeLimitedList;->backingList:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/SizeLimitedList;, "Lcom/sun/javafx/scene/control/SizeLimitedList<TE;>;"
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/SizeLimitedList;, "Lcom/sun/javafx/scene/control/SizeLimitedList<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/SizeLimitedList;->backingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/SizeLimitedList;, "Lcom/sun/javafx/scene/control/SizeLimitedList<TE;>;"
    return v0
.end method
