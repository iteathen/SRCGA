.class Ljavafx/scene/layout/TilePane$9;
.super Ljavafx/css/StyleableDoubleProperty;
.source "TilePane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/TilePane;->vgapProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/TilePane;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/TilePane;)V
    .locals 4

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$9;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/TilePane;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/TilePane$9;->this$0:Ljavafx/scene/layout/TilePane;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableDoubleProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane$9;->this$0:Ljavafx/scene/layout/TilePane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$9;
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
    .line 667
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$9;
    # getter for: Ljavafx/scene/layout/TilePane$StyleableProperties;->VGAP:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/TilePane$StyleableProperties;->access$800()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$9;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$9;
    const-string v1, "vgap"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$9;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 662
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane$9;->this$0:Ljavafx/scene/layout/TilePane;

    invoke-virtual {v1}, Ljavafx/scene/layout/TilePane;->requestLayout()V

    .line 663
    return-void
.end method
