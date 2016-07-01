.class final Ljavafx/scene/control/TableColumn$1;
.super Ljava/lang/Object;
.source "TableColumn.java"

# interfaces
.implements Ljavafx/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableColumn;
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
        "Ljavafx/scene/control/TableColumn",
        "<**>;",
        "Ljavafx/scene/control/TableCell",
        "<**>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableColumn$1;->call(Ljavafx/scene/control/TableColumn;)Ljavafx/scene/control/TableCell;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumn$1;
    return-object v0
.end method

.method public call(Ljavafx/scene/control/TableColumn;)Ljavafx/scene/control/TableCell;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumn",
            "<**>;)",
            "Ljavafx/scene/control/TableCell",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$1;
    move-object v1, p1

    .local v1, "param":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<**>;"
    new-instance v2, Ljavafx/scene/control/TableColumn$1$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableColumn$1$1;-><init>(Ljavafx/scene/control/TableColumn$1;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumn$1;
    return-object v0
.end method
