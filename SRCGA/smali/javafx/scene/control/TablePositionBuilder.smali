.class public Ljavafx/scene/control/TablePositionBuilder;
.super Ljava/lang/Object;
.source "TablePositionBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/TablePositionBuilder",
        "<TS;TT;TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/TablePosition",
        "<TS;TT;>;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private row:I

.field private tableColumn:Ljavafx/scene/control/TableColumn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private tableView:Ljavafx/scene/control/TableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TableView",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePositionBuilder;, "Ljavafx/scene/control/TablePositionBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/TablePositionBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/TablePositionBuilder",
            "<TS;TT;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/TablePositionBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TablePositionBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePositionBuilder;, "Ljavafx/scene/control/TablePositionBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TablePositionBuilder;->build()Ljavafx/scene/control/TablePosition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TablePositionBuilder;, "Ljavafx/scene/control/TablePositionBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/TablePosition;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TablePosition",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePositionBuilder;, "Ljavafx/scene/control/TablePositionBuilder<TS;TT;TB;>;"
    new-instance v2, Ljavafx/scene/control/TablePosition;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TablePositionBuilder;->tableView:Ljavafx/scene/control/TableView;

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/TablePositionBuilder;->row:I

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TablePositionBuilder;->tableColumn:Ljavafx/scene/control/TableColumn;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TablePosition;-><init>(Ljavafx/scene/control/TableView;ILjavafx/scene/control/TableColumn;)V

    move-object v1, v2

    .line 81
    .local v1, "x":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TablePositionBuilder;, "Ljavafx/scene/control/TablePositionBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public row(I)Ljavafx/scene/control/TablePositionBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePositionBuilder;, "Ljavafx/scene/control/TablePositionBuilder<TS;TT;TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/control/TablePositionBuilder;->row:I

    .line 53
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TablePositionBuilder;, "Ljavafx/scene/control/TablePositionBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public tableColumn(Ljavafx/scene/control/TableColumn;)Ljavafx/scene/control/TablePositionBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePositionBuilder;, "Ljavafx/scene/control/TablePositionBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TablePositionBuilder;->tableColumn:Ljavafx/scene/control/TableColumn;

    .line 63
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TablePositionBuilder;, "Ljavafx/scene/control/TablePositionBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public tableView(Ljavafx/scene/control/TableView;)Ljavafx/scene/control/TablePositionBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TS;>;)TB;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TablePositionBuilder;, "Ljavafx/scene/control/TablePositionBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TablePositionBuilder;->tableView:Ljavafx/scene/control/TableView;

    .line 73
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TablePositionBuilder;, "Ljavafx/scene/control/TablePositionBuilder<TS;TT;TB;>;"
    return-object v0
.end method
