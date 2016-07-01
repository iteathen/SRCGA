.class final Ljavafx/scene/control/TableView$1;
.super Ljava/lang/Object;
.source "TableView.java"

# interfaces
.implements Ljavafx/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableView;
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
        "Ljavafx/scene/control/TableView$ResizeFeatures;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljavafx/scene/control/TableView$ResizeFeatures;)Ljava/lang/Boolean;
    .locals 8

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$1;
    move-object v1, p1

    .local v1, "prop":Ljavafx/scene/control/TableView$ResizeFeatures;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$ResizeFeatures;->getColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/TableView$ResizeFeatures;->getDelta()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Ljavafx/scene/control/TableUtil;->resize(Ljavafx/scene/control/TableColumnBase;D)D

    move-result-wide v4

    move-wide v2, v4

    .line 387
    .local v2, "result":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/control/TableView$1;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableView$1;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TableView$ResizeFeatures;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView$1;->call(Ljavafx/scene/control/TableView$ResizeFeatures;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableView$1;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$1;
    const-string v1, "unconstrained-resize"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$1;
    return-object v0
.end method
