.class Ljavafx/scene/layout/TilePane$11;
.super Ljavafx/css/StyleableObjectProperty;
.source "TilePane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/TilePane;->tileAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/geometry/Pos;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/TilePane;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/TilePane;Ljavafx/geometry/Pos;)V
    .locals 5

    .prologue
    .line 740
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$11;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/TilePane;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/geometry/Pos;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/TilePane$11;->this$0:Ljavafx/scene/layout/TilePane;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$11;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane$11;->this$0:Ljavafx/scene/layout/TilePane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$11;
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
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 748
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$11;
    # getter for: Ljavafx/scene/layout/TilePane$StyleableProperties;->TILE_ALIGNMENT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/TilePane$StyleableProperties;->access$1000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$11;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$11;
    const-string v1, "tileAlignment"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$11;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$11;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane$11;->this$0:Ljavafx/scene/layout/TilePane;

    invoke-virtual {v1}, Ljavafx/scene/layout/TilePane;->requestLayout()V

    .line 744
    return-void
.end method
