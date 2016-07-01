.class Ljavafx/scene/Node$13;
.super Ljavafx/css/StyleableObjectProperty;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node;->nodeOrientationProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/geometry/NodeOrientation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method constructor <init>(Ljavafx/scene/Node;Ljavafx/geometry/NodeOrientation;)V
    .locals 5

    .prologue
    .line 6138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$13;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/geometry/NodeOrientation;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$13;->this$0:Ljavafx/scene/Node;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$13;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$13;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$13;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 5

    .prologue
    .line 6157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$13;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$13;
    const-string v1, "nodeOrientation"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$13;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 6141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$13;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$13;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->nodeResolvedOrientationInvalidated()V

    .line 6142
    return-void
.end method
