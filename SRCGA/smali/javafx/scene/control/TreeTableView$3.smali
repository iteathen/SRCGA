.class final Ljavafx/scene/control/TreeTableView$3;
.super Ljava/lang/Object;
.source "TreeTableView.java"

# interfaces
.implements Ljavafx/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Callback",
        "<",
        "Ljavafx/scene/control/TreeTableView;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$3;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljavafx/scene/control/TreeTableView;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$3;
    move-object v1, p1

    .local v1, "table":Ljavafx/scene/control/TreeTableView;
    move-object v4, v1

    :try_start_0
    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    move-object v2, v4

    .line 560
    .local v2, "rootItem":Ljavafx/scene/control/TreeItem;
    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    .line 579
    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$3;
    .end local v2    # "rootItem":Ljavafx/scene/control/TreeItem;
    :goto_0
    return-object v0

    .line 562
    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView$3;
    .restart local v2    # "rootItem":Ljavafx/scene/control/TreeItem;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getSortMode()Ljavafx/scene/control/TreeSortMode;

    move-result-object v4

    move-object v3, v4

    .line 563
    .local v3, "sortMode":Ljavafx/scene/control/TreeSortMode;
    move-object v4, v3

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 565
    :cond_1
    move-object v4, v2

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/control/TreeItem;->lastSortMode:Ljavafx/scene/control/TreeSortMode;

    .line 566
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableView;->getComparator()Ljava/util/Comparator;

    move-result-object v5

    iput-object v5, v4, Ljavafx/scene/control/TreeItem;->lastComparator:Ljava/util/Comparator;

    .line 567
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->sort()V

    .line 568
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 569
    .end local v2    # "rootItem":Ljavafx/scene/control/TreeItem;
    .end local v3    # "sortMode":Ljavafx/scene/control/TreeSortMode;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 579
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$3;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$3;->call(Ljavafx/scene/control/TreeTableView;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$3;
    return-object v0
.end method
