.class Ljavafx/scene/layout/TilePane$7;
.super Ljavafx/scene/layout/TilePane$TileSizeProperty;
.source "TilePane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/TilePane;->tileHeightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/TilePane;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/TilePane;Ljava/lang/String;D)V
    .locals 11

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$7;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/TilePane;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-wide v3, p3

    .local v3, "initSize":D
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/layout/TilePane$7;->this$0:Ljavafx/scene/layout/TilePane;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/layout/TilePane$TileSizeProperty;-><init>(Ljavafx/scene/layout/TilePane;Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method public compute()D
    .locals 3

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$7;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane$7;->this$0:Ljavafx/scene/layout/TilePane;

    invoke-static {v1}, Ljavafx/scene/layout/TilePane;->access$600(Ljavafx/scene/layout/TilePane;)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$7;
    return-wide v0
.end method
