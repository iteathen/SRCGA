.class Ljavafx/scene/layout/TilePane$2;
.super Ljavafx/css/StyleableIntegerProperty;
.source "TilePane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/TilePane;->prefRowsProperty()Ljavafx/beans/property/IntegerProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/TilePane;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/TilePane;I)V
    .locals 5

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/TilePane;
    move v2, p2

    .local v2, "initialValue":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/TilePane$2;->this$0:Ljavafx/scene/layout/TilePane;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableIntegerProperty;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane$2;->this$0:Ljavafx/scene/layout/TilePane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$2;
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
    .line 408
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$2;
    # getter for: Ljavafx/scene/layout/TilePane$StyleableProperties;->PREF_ROWS:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/TilePane$StyleableProperties;->access$100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$2;
    const-string v1, "prefRows"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane$2;->this$0:Ljavafx/scene/layout/TilePane;

    invoke-virtual {v1}, Ljavafx/scene/layout/TilePane;->requestLayout()V

    .line 404
    return-void
.end method
