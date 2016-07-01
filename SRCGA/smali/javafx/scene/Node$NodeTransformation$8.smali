.class Ljavafx/scene/Node$NodeTransformation$8;
.super Ljavafx/css/StyleableDoubleProperty;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node$NodeTransformation;->rotateProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/Node$NodeTransformation;


# direct methods
.method constructor <init>(Ljavafx/scene/Node$NodeTransformation;D)V
    .locals 8

    .prologue
    .line 5949
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$8;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/Node$NodeTransformation;
    move-wide v2, p2

    .local v2, "initialValue":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/Node$NodeTransformation$8;->this$1:Ljavafx/scene/Node$NodeTransformation;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 5962
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation$8;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$8;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 5957
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$8;
    # getter for: Ljavafx/scene/Node$StyleableProperties;->ROTATE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/Node$StyleableProperties;->access$2800()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$8;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5967
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$8;
    const-string v1, "rotate"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$8;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 5952
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation$8;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_transformsChanged()V

    .line 5953
    return-void
.end method
