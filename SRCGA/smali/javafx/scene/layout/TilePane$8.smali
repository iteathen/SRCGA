.class Ljavafx/scene/layout/TilePane$8;
.super Ljavafx/css/StyleableDoubleProperty;
.source "TilePane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/TilePane;->hgapProperty()Ljavafx/beans/property/DoubleProperty;
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
    .line 625
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$8;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/TilePane;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/TilePane$8;->this$0:Ljavafx/scene/layout/TilePane;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableDoubleProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane$8;->this$0:Ljavafx/scene/layout/TilePane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$8;
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
    .line 633
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$8;
    # getter for: Ljavafx/scene/layout/TilePane$StyleableProperties;->HGAP:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/TilePane$StyleableProperties;->access$700()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$8;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$8;
    const-string v1, "hgap"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$8;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 628
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane$8;->this$0:Ljavafx/scene/layout/TilePane;

    invoke-virtual {v1}, Ljavafx/scene/layout/TilePane;->requestLayout()V

    .line 629
    return-void
.end method
