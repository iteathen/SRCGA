.class Ljavafx/scene/layout/FlowPane$6;
.super Ljavafx/css/StyleableObjectProperty;
.source "FlowPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/FlowPane;->columnHalignmentProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/geometry/HPos;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/FlowPane;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/FlowPane;Ljavafx/geometry/HPos;)V
    .locals 5

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/FlowPane;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/geometry/HPos;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/FlowPane$6;->this$0:Ljavafx/scene/layout/FlowPane;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane$6;->this$0:Ljavafx/scene/layout/FlowPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane$6;
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
            "Ljavafx/geometry/HPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$6;
    # getter for: Ljavafx/scene/layout/FlowPane$StyleableProperties;->COLUMN_HALIGNMENT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/FlowPane$StyleableProperties;->access$400()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$6;
    const-string v1, "columnHalignment"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane$6;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane$6;->this$0:Ljavafx/scene/layout/FlowPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/FlowPane;->requestLayout()V

    .line 487
    return-void
.end method
