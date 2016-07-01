.class Ljavafx/scene/Node$NodeTransformation$9;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node$NodeTransformation;->rotationAxisProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/geometry/Point3D;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/Node$NodeTransformation;


# direct methods
.method constructor <init>(Ljavafx/scene/Node$NodeTransformation;Ljavafx/geometry/Point3D;)V
    .locals 5

    .prologue
    .line 5982
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$9;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, p2

    .local v2, "x0":Ljavafx/geometry/Point3D;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$NodeTransformation$9;->this$1:Ljavafx/scene/Node$NodeTransformation;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 5990
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation$9;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$9;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5995
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$9;
    const-string v1, "rotationAxis"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$9;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 5985
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation$9;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_transformsChanged()V

    .line 5986
    return-void
.end method
