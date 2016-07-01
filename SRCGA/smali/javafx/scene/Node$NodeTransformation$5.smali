.class Ljavafx/scene/Node$NodeTransformation$5;
.super Ljavafx/css/StyleableDoubleProperty;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node$NodeTransformation;->scaleXProperty()Ljavafx/beans/property/DoubleProperty;
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
    .line 5856
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$5;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/Node$NodeTransformation;
    move-wide v2, p2

    .local v2, "initialValue":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/Node$NodeTransformation$5;->this$1:Ljavafx/scene/Node$NodeTransformation;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 5869
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation$5;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$5;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 5864
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$5;
    # getter for: Ljavafx/scene/Node$StyleableProperties;->SCALE_X:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/Node$StyleableProperties;->access$2500()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5874
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$5;
    const-string v1, "scaleX"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$5;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 5859
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation$5;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_transformsChanged()V

    .line 5860
    return-void
.end method
