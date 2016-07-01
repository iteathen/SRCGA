.class Ljavafx/scene/layout/TilePane$4;
.super Ljavafx/css/StyleableDoubleProperty;
.source "TilePane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/TilePane;->prefTileWidthProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/TilePane;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/TilePane;D)V
    .locals 8

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/TilePane;
    move-wide v2, p2

    .local v2, "initialValue":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/layout/TilePane$4;->this$0:Ljavafx/scene/layout/TilePane;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane$4;->this$0:Ljavafx/scene/layout/TilePane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$4;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/TilePane;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$4;
    # getter for: Ljavafx/scene/layout/TilePane$StyleableProperties;->PREF_TILE_WIDTH:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/TilePane$StyleableProperties;->access$300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$4;
    const-string v1, "prefTileWidth"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$4;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane$4;->this$0:Ljavafx/scene/layout/TilePane;

    invoke-virtual {v1}, Ljavafx/scene/layout/TilePane;->requestLayout()V

    .line 485
    return-void
.end method
