.class Ljavafx/scene/layout/FlowPane$5;
.super Ljavafx/css/StyleableObjectProperty;
.source "FlowPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/FlowPane;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/scene/layout/FlowPane;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/FlowPane;Ljavafx/geometry/Pos;)V
    .locals 5

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/FlowPane;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/geometry/Pos;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/FlowPane$5;->this$0:Ljavafx/scene/layout/FlowPane;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane$5;->this$0:Ljavafx/scene/layout/FlowPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane$5;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/FlowPane;",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$5;
    # getter for: Ljavafx/scene/layout/FlowPane$StyleableProperties;->ALIGNMENT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/FlowPane$StyleableProperties;->access$300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$5;
    const-string v1, "alignment"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane$5;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane$5;->this$0:Ljavafx/scene/layout/FlowPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/FlowPane;->requestLayout()V

    .line 447
    return-void
.end method
