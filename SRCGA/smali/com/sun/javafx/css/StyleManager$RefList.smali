.class Lcom/sun/javafx/css/StyleManager$RefList;
.super Ljava/lang/Object;
.source "StyleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/StyleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<TK;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$RefList;, "Lcom/sun/javafx/css/StyleManager$RefList<TK;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 363
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$RefList;, "Lcom/sun/javafx/css/StyleManager$RefList<TK;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    .local v2, "n":I
    :goto_0
    const/4 v5, 0x0

    move v6, v2

    if-gt v5, v6, :cond_2

    .line 368
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/Reference;

    move-object v3, v5

    .line 369
    .local v3, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TK;>;"
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 370
    .local v4, "k":Ljava/lang/Object;, "TK;"
    move-object v5, v4

    if-nez v5, :cond_1

    .line 372
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    .line 367
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 375
    :cond_1
    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 376
    .line 382
    .end local v3    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TK;>;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    :goto_1
    return-void

    .line 381
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 382
    goto :goto_1
.end method

.method contains(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$RefList;, "Lcom/sun/javafx/css/StyleManager$RefList<TK;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    .local v2, "n":I
    :goto_0
    const/4 v5, 0x0

    move v6, v2

    if-gt v5, v6, :cond_1

    .line 405
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/Reference;

    move-object v3, v5

    .line 406
    .local v3, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TK;>;"
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 407
    .local v4, "k":Ljava/lang/Object;, "TK;"
    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 408
    const/4 v5, 0x1

    move v0, v5

    .line 411
    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$RefList;, "Lcom/sun/javafx/css/StyleManager$RefList<TK;>;"
    .end local v3    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TK;>;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    :goto_1
    return v0

    .line 404
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager$RefList;, "Lcom/sun/javafx/css/StyleManager$RefList<TK;>;"
    .restart local v3    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TK;>;"
    .restart local v4    # "k":Ljava/lang/Object;, "TK;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 411
    .end local v3    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TK;>;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method remove(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$RefList;, "Lcom/sun/javafx/css/StyleManager$RefList<TK;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    .local v2, "n":I
    :goto_0
    const/4 v5, 0x0

    move v6, v2

    if-gt v5, v6, :cond_2

    .line 387
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/Reference;

    move-object v3, v5

    .line 388
    .local v3, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TK;>;"
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 389
    .local v4, "k":Ljava/lang/Object;, "TK;"
    move-object v5, v4

    if-nez v5, :cond_1

    .line 391
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    .line 386
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 394
    :cond_1
    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 395
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    .line 396
    .line 400
    .end local v3    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TK;>;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    :goto_1
    return-void

    :cond_2
    goto :goto_1
.end method
